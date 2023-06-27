# Applipress Demo

Applipress is an innovative code generator designed to accelerate the development of your business applications. It seamlessly integrates three major components:

- **Applipress Designer**: A user-friendly GUI for defining models that serves as the foundation for your application creation process.
- **JHipster**: A versatile open-source code generator that leverages predefined templates to automate and simplify your coding tasks.
- **Spiral 5**: A JHipster blueprint offering a diverse set of templates to further streamline your code generation process.

While JHipster enables the generation of various backend and frontend applications, Applipress specializes in creating high-performance Spring Boot backends and robust Angular frontends, tailored to meet your specific business requirements.

To help you get a feel for Applipress, we've encapsulated the Applipress Demo inside a Docker container. This allows you to quickly deploy and test drive Applipress in a controlled environment, letting you experience firsthand the efficiency and power it brings to your application development process.

## Installation

1. Clone the repository.

2. Verify the container configuration in the **applipress_demo.yml** file. You may want to adjust the mapping of the **projects** folder to point to your local **projects** folder.

3. If you want your forms to be automatically translated into other languages, you need to set up automatic translation. Enter the **googleTranslateKey** or **azureTranslateKey** in the **config/auto-translate/.auto-translate-config** file. Also set **automaticTranslation** to **true** and **translationProvider** to either **google** or **azure**. Please refrain from changing the **config/applipress/config.json** file.

4. Execute the **setup** script to prepare the environment:

    - **Windows**: `./setup.ps1`
    - **Linux**, **macOS**: `source ./setup.sh`

5. Run `docker compose -f applipress_demo.yml up -d` to start the container. This command should be executed in the same terminal session as the setup script.

6. After the container is up and running, you can access the Applipress Demo at http://localhost:18080.

7. To stop the container, run `docker compose -f applipress_demo.yml down`.
