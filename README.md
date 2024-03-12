# Applipress Demo

Applipress is an innovative code generator designed to accelerate the development of business applications. It seamlessly integrates three major components:

- **Applipress Designer**: A user-friendly GUI that allows you to define models, serving as the foundation for your application creation process.
- **JHipster**: A versatile open-source code generator that leverages predefined templates to automate and simplify your coding tasks.
- **Spiral 5**: A JHipster blueprint providing an extensive set of templates to further streamline your code generation process.

While JHipster enables the creation of various backend and frontend applications, Applipress specializes in generating high-performance Spring Boot backends and robust Angular frontends, tailored to meet your specific business needs.

We've encapsulated the Applipress Demo inside a Docker container to showcase its capabilities. This allows for quick deployment and testing of Applipress in a controlled environment, letting you experience firsthand the power and efficiency it brings to your application development process.

## Installation

1. Clone the repository.

2. Run the **start** command in your terminal:
   - For Linux and macOS: `./start.sh`
   - For Windows: `.\start.ps1`

3. Once the container is up and running, you can access the Applipress Demo at http://localhost:18080.

4. To stop the container, run `stop` command.

## Additional Configuration

### Mapping the applipress projects folder to your local projects folder

You can alter the container settings in the **docker-compose.yml** file. This includes the option to map the **projects** folder to your local **projects** folder. For example: `- /home/your_username/projects:/projects`.

### Enabling automatic translation for generated forms

If you want your forms to be automatically translated into other languages, you'll need to configure automatic translation. Enter your Google translation API key into **googleTranslateKey** or your Azure translation key into **azureTranslateKey** in the **config/auto-translate/.auto-translate-config** file. Then, set **automaticTranslation** to **true** and **translationProvider** to either **google** or **azure**. 
