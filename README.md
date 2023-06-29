# Applipress Demo

Applipress is an innovative code generator designed to accelerate the development of business applications. It seamlessly integrates three major components:

- **Applipress Designer**: A user-friendly GUI that allows you to define models that serve as the foundation for your application creation process.
- **JHipster**: A versatile open-source code generator that uses predefined templates to automate and simplify your coding tasks.
- **Spiral 5**: A JHipster blueprint that provides an extensive set of templates to further streamline your code generation process.

While JHipster facilitates the creation of various backend and frontend applications, Applipress focuses on generating high-performance Spring Boot backends and robust Angular frontends, customized to meet your specific business requirements.

To showcase the capabilities of Applipress, we've encapsulated the Applipress Demo inside a Docker container. This enables you to quickly deploy and test Applipress in a controlled environment, allowing you to experience firsthand the efficiency and power it brings to your application development process.

## Installation

1. Clone the repository.

2. Run `docker compose up -d` in the terminal. This command starts the Docker container.

3. After the container is up and running, you can access the Applipress Demo at http://localhost:18080.

4. To stop the container, run `docker compose down`.

## Additional Configuration

### Changing the applipress projects folder to map to your local projects folder

You can configure the container settings in the **docker-compose.yml** file. This includes the option to change the mapping of the **projects** folder to point to your local **projects** folder. For example: `- /home/your_username/projects:/projects`.

### Automatic translation of generated forms

If you want your forms to be automatically translated into other languages, you need to configure automatic translation. Enter your Google translation API key into **googleTranslateKey** or Azure translation key into **azureTranslateKey** in the **config/auto-translate/.auto-translate-config** file. Additionally, set **automaticTranslation** to **true** and **translationProvider** to either **google** or **azure**. Please avoid modifying the **config/applipress/config.json** file.
