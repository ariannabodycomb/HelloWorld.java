                # Use the OpenJDK 23 image as the base image
                FROM openjdk:25

                # Create a new app directory for my application files
                RUN mkdir /app

                # Copy the app files from host machine to image filesystem
                COPY out/production/HelloWorld.java/ /app

                # Set the directory for executing future commands
                WORKDIR /app

                # Run the Main class
                CMD java HelloWorld
