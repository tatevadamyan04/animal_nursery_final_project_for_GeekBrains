class Animal:
    def __init__(self, name, age):
        self.name = name          # Public attribute
        self._age = age          # Protected attribute
        self.commands = []       # List of commands the animal can perform

    def speak(self):
        raise NotImplementedError("Subclasses must implement this method")

    def get_age(self):
        return self._age          # Method to access protected attribute

    def add_command(self, command):
        self.commands.append(command)

    def list_commands(self):
        return ', '.join(self.commands)


class DomesticAnimal(Animal):
    def speak(self):
        return "I am a domestic animal."


class PackAnimal(Animal):
    def speak(self):
        return "I am a pack animal."


animals = []  # List to store animals


def add_animal(animal_type, name, age):
    if animal_type.lower() == 'domestic':
        new_animal = DomesticAnimal(name, age)
    elif animal_type.lower() == 'pack':
        new_animal = PackAnimal(name, age)
    else:
        print("Unknown animal type!")
        return

    animals.append(new_animal)
    print(f"Added new animal: {new_animal.name}")


def train_animal(animal_name, command):
    for animal in animals:
        if animal.name == animal_name:
            animal.add_command(command)
            print(f"{animal_name} has learned the command: {command}")
            return
    print("Animal not found!")


def list_animals():
    if not animals:
        print("No animals in the registry.")
        return

    for animal in animals:
        print(f"Name: {animal.name}, Age: {animal.get_age()}, Type: {animal.__class__.__name__}")


def main_menu():
    while True:
        print("\n--- Animal Registry Menu ---")
        print("1. Add New Animal")
        print("2. Train Animal")
        print("3. List Animals")
        print("4. Speak (Animal Sound)")
        print("5. Exit")
        
        choice = input("Choose an option: ")
        
        if choice == '1':
            animal_type = input("Enter animal type (domestic/pack): ")
            name = input("Enter animal's name: ")
            age = int(input("Enter animal's age: "))
            add_animal(animal_type, name, age)
        
        elif choice == '2':
            animal_name = input("Enter the name of the animal to train: ")
            command = input("Enter the command to teach: ")
            train_animal(animal_name, command)
        
        elif choice == '3':
            list_animals()
        
        elif choice == '4':
            animal_name = input("Enter the name of the animal to hear it speak: ")
            for animal in animals:
                if animal.name == animal_name:
                    print(f"{animal.name} says: {animal.speak()}")
                    break
            else:
                print("Animal not found!")
        
        elif choice == '5':
            print("Exiting the program.")
            break
        
        else:
            print("Invalid option! Please try again.")


if __name__ == "__main__":
    main_menu()
