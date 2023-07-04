import serial
import time
import psycopg2
import logging
from datetime import datetime
import paho.mqtt.client as mqtt
import threading

logging.basicConfig(
    format = '______________________\n%(levelname)-2s %(asctime)s \n%(message)s',
    filename = F'.\challenge_4\Prototyping\logs\{datetime.today().strftime("%y.%m.%d")}_py.log', 
    encoding = 'utf-8', 
    level = logging.DEBUG,
    datefmt='%y.%m.%d %H:%M:%S'
    )

ser_display = serial.Serial('/dev/ttyACM0', 9600)  # Port und Baudrate anpassen
ser_water = serial.Serial('/dev/ttyACM1', 9600)  # Port und Baudrate anpassen

mqtt_broker = "localhost"
mqtt_port = 1883
mqtt_usr = "admin"
mqtt_passw = "testing1234"
mqtt_water = "topic/water"
mqtt_gps = "topic/gps"
mqtt_display = "topic/display"

terminate_flag = threading.Event()

db_host = '10.8.0.1'
db_port = '5432'
db_database = 'ferry'
db_usr = 'admin_hs'
db_pw = 'Testing1234'

# Callback function for the on_connect event
def on_connect(client, userdata, flags, rc):
	print("Connected to MQTT broker: " + mqtt_broker)
	client.subscribe(mqtt_gps)

# Callback function for the on_message event
def on_message(client, userdata, msg):
	global manual_mode, manual_level, manual_vent
	print("Received message: " + str(msg.payload.decode()))
	if msg.topic == mqtt_water:
	elif msg.topic == mqtt_gps:


# Function to start the MQTT client
def start_mqtt_client():
	client = mqtt.Client()
	client.username_pw_set(mqtt_usr, mqtt_passw)
	client.on_connect = on_connect
	client.on_message = on_message
	client.connect(mqtt_broker, mqtt_port, 60)

	while not terminate_flag.is_set():
		client.loop()
		time.sleep(0.1)

	client.disconnect()

# Function to publish a message
def publish_message(topic, message):
	client = mqtt.Client()
	client.username_pw_set(mqtt_usr, mqtt_passw)
	client.connect(mqtt_broker, mqtt_port, 60)
	client.publish(topic, message)
	client.disconnect()

def clear_display():
    ser_display.write(b'C')

def move_cursor(column, row):
    ser_display.write(b'M')
    ser_display.write(str(column).encode())
    ser_display.write(b' ')
    ser_display.write(str(row).encode())

def write_text(text):
    ser_display.write(b'W')
    ser_display.write(text.encode())
    ser_display.write(b'\n')

def main():
    # main code

    mqtt_thread = threading.Thread(target=start_mqtt_client)
    mqtt_thread.start()

    clear_display()
    move_cursor(0, 0)
    write_text("Hello, World!")
    water = ser_water.readline().decode('utf-8').strip()
    message_water = str(water)
    publish_message(mqtt_water, message_water)
    pass



if __name__ == "__main__":
    try:
        main()
    
    except serial.SerialException as se:
        logging.error(f"Serial communication error: {se}")
        print(f"Serial communication error: {se}")
    except psycopg2.Error as pe:
        logging.error(f"PostgreSQL database error: {pe}")
        print(f"PostgreSQL database error: {pe}")
    except psycopg2.errors.SyntaxError as se:
        logging.error(f"PostgreSQL syntax error: {se}")
        print(f"PostgreSQL syntax error: {se}")
    except KeyboardInterrupt:
        logging.info("KeyboardInterrupt: Script interrupted by user")
        print("KeyboardInterrupt: Script interrupted by user")
    except Exception as e:
        logging.exception(f"An unexpected error occurred: {e}")
        print(f"An unexpected error occurred: {e}")
    
    finally:
        #cleanup
        pass