# 17.1 Factory Constructor & Modal Class
- A special type of constructor that doesn't always create a new instance of its class.
- Instead, it may return an existing instance or even an instance of a different class.
- This flexibility allows developers to control the object creation process more    precisely.

# Advantages of Factory constructor :
 ### `Custom instantiation logic` : With factory constructors, you can implement custom logic for creating instances of a     class. This can be useful when you need to perform additional operations or validations before returning an object.
 
- ### `Reuse of existing instances` : Factory constructors allow you to control the instantiation process, including whether a new instance should be created or an existing one should be reused. This can be particularly helpful in scenarios where you want to maintain a pool of instances or enforce singleton behavior.

 
- ### `Returning subtypes` : Factory constructors can return instances of subclasses or different implementations based on certain conditions. This enables you to encapsulate complex instantiation logic and provide a clean interface for creating objects, without exposing the internal details of the class hierarchy.

 
- ### `Immutable objects` : In cases where you want to create immutable objects, factory constructors can be used to return pre-existing instances or construct new ones with the same state. This helps in optimizing memory usage and improving performance by reducing the number of object allocations.

 
- ### `Optimized object creation` : Factory constructors can optimize object creation by reusing instances or performing lazy initialization. This can lead to improved memory efficiency and reduced overhead, especially in scenarios where object creation is frequent or resource-intensive.

# Disadvantages of Factory constructor :


- ### `Complexity` : Factory constructors can introduce additional complexity into your codebase. This can make the code harder to read and maintain, especially for developers who are not familiar with the factory pattern.


- ### `Performance Overhead` : If not implemented carefully, factory constructors can introduce performance overhead. For instance, if the factory constructor involves expensive operations like reading from a database or performing complex calculations, it could slow down the creation of instances.


- ### `Reduced Transparency` : Using factory constructors can sometimes make it less clear how instances are being created. This lack of transparency can lead to confusion, especially when debugging issues related to instance creation.


- ### `Limited Use of Initializers` : In Dart, factory constructors cannot use initializer lists, which can limit their flexibility compared to regular constructors. This can be a limitation when you need to initialize final fields that rely on complex initialization logic.


- ### `Instance Caching Pitfalls` :  If factory constructors are used to implement caching (returning existing instances instead of creating new ones), this can lead to unexpected behavior if the cached instances are modified elsewhere in the code. It requires careful management to avoid such issues.

# Modal class :

- ### Nodel class which help us to determine the structure of the data,for eg — API responses.

- ### We all know the concept of classes in Object Oriented Programming, similar to that , we can declare the variables, their data types and can write some methods to add some functionality.

# Advantages of Modal class : 


- ### `Data Encapsulation` : Model classes encapsulate data and provide a clear structure for it.

 
- ### `Code Reusability` : Model classes can be reused throughout the application, ensuring consistency.

 
- ### `Ease of Serialization` : Model classes simplify the process of converting data to and from different formats, such as JSON.

 
- ### `Data Encapsulation` : Keeping data-related logic within model classes makes the code easier to maintain and understand.

# Disadvantages of Modal class : 

- ### `Increased Boilerplate Code` :  Model classes can lead to a significant amount of boilerplate code, especially if you have many fields and need to implement methods for serialization, deserialization, equality checks, and other operations. This can make the codebase more cumbersome to manage.


- ### `Code Duplication` : If you have similar models with slight variations, it can lead to code duplication. This may happen when different parts of the application require similar but slightly different data structures.


- ### `Complexity in Changes` : If you need to change the structure of your data, such as adding, removing, or renaming fields, it can be complex and error-prone. All the places where the model is used must be updated accordingly, which can be time-consuming and may introduce bugs.


- ### `Limited Flexibility` :  Rigidly defined model classes can sometimes limit flexibility, especially when dealing with dynamic or evolving data structures. If your application frequently needs to handle data with varying structures, maintaining strict model classes can be challenging.


<h3 align="center"> ✨ DialogeBox ✨ </h3>

<h1 align="left"></h1>
<div align ="center">

  <img src = "https://github.com/sanjuafre123/quete_app_daily_task/assets/148860124/396774f0-bba4-4b04-9598-1ae159798321" height ="550">
  <img src = "https://github.com/sanjuafre123/quete_app_daily_task/assets/148860124/bc1e03c1-4d8e-495a-b667-026788c6914b" height ="550">
  <img src = "https://github.com/sanjuafre123/quete_app_daily_task/assets/148860124/722b2f96-a1dd-4e95-a968-645bfcf28706" height ="550">


  https://github.com/sanjuafre123/quete_app_daily_task/assets/148860124/9590595a-2d09-472f-9a47-a01f19723817


</div>



<h3 align="center"> ✨ invoice generator ✨ </h3>

<h1 align="left"></h1>
<div align ="center">

  <img src = "https://github.com/sanjuafre123/quete_app_daily_task/assets/148860124/ce3ca1ed-49a1-4ea5-bf9e-21f44dbeb835" height ="550">
  <img src = "https://github.com/sanjuafre123/quete_app_daily_task/assets/148860124/1708e2f7-1c8b-4914-9e23-c85edd96acb0" height ="550">
  <img src = "https://github.com/sanjuafre123/quete_app_daily_task/assets/148860124/dada0dea-7ed1-4e59-9377-b4ebd3dee5b1" height ="550">

  https://github.com/sanjuafre123/quete_app_daily_task/assets/148860124/dc0b7df5-55e2-4f30-8583-529e31957e2b

</div>
