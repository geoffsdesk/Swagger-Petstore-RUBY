# Getting started

## How to Build

This client library is a Ruby gem which can be compiled and used in your Ruby and Ruby on Rails project. This library requires a few gems from the RubyGems repository.

1. Open the command line interface or the terminal and navigate to the folder containing the source code.
2. Run ``` gem build swagger_petstore.gemspec ``` to build the gem.
3. Once built, the gem can be installed on the current work environment using ``` gem install swagger_petstore-1.0.0.gem ```

![Building Gem](https://apidocs.io/illustration/ruby?step=buildSDK&workspaceFolder=Swagger%20Petstore-Ruby&workspaceName=Swagger%20Petstore-Ruby&projectName=swagger_petstore&gemName=swagger_petstore&gemVer=1.0.0)

## How to Use

The following section explains how to use the SwaggerPetstore Ruby Gem in a new Rails project using RubyMine&trade;. The basic workflow presented here is also applicable if you prefer using a different editor or IDE.

### 1. Starting a new project

Close any existing projects in RubyMine&trade; by selecting ``` File -> Close Project ```. Next, click on ``` Create New Project ``` to create a new project from scratch.

![Create a new project in RubyMine](https://apidocs.io/illustration/ruby?step=createNewProject0&workspaceFolder=Swagger%20Petstore-Ruby&workspaceName=SwaggerPetstore&projectName=swagger_petstore&gemName=swagger_petstore&gemVer=1.0.0)

Next, provide ``` TestApp ``` as the project name, choose ``` Rails Application ``` as the project type, and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 1](https://apidocs.io/illustration/ruby?step=createNewProject1&workspaceFolder=Swagger%20Petstore-Ruby&workspaceName=SwaggerPetstore&projectName=swagger_petstore&gemName=swagger_petstore&gemVer=1.0.0)

In the next dialog make sure that correct *Ruby SDK* is being used (minimum 2.0.0) and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 2](https://apidocs.io/illustration/ruby?step=createNewProject2&workspaceFolder=Swagger%20Petstore-Ruby&workspaceName=SwaggerPetstore&projectName=swagger_petstore&gemName=swagger_petstore&gemVer=1.0.0)

This will create a new Rails Application project with an existing set of files and folder.

### 2. Add reference of the gem

In order to use the SwaggerPetstore gem in the new project we must add a gem reference. Locate the ```Gemfile``` in the *Project Explorer* window under the ``` TestApp ``` project node. The file contains references to all gems being used in the project. Here, add the reference to the library gem by adding the following line: ``` gem 'swagger_petstore', '~> 1.0.0' ```

![Add references of the Gemfile](https://apidocs.io/illustration/ruby?step=addReference&workspaceFolder=Swagger%20Petstore-Ruby&workspaceName=SwaggerPetstore&projectName=swagger_petstore&gemName=swagger_petstore&gemVer=1.0.0)

### 3. Adding a new Rails Controller

Once the ``` TestApp ``` project is created, a folder named ``` controllers ``` will be visible in the *Project Explorer* under the following path: ``` TestApp > app > controllers ```. Right click on this folder and select ``` New -> Run Rails Generator... ```.

![Run Rails Generator on Controllers Folder](https://apidocs.io/illustration/ruby?step=addCode0&workspaceFolder=Swagger%20Petstore-Ruby&workspaceName=SwaggerPetstore&projectName=swagger_petstore&gemName=swagger_petstore&gemVer=1.0.0)

Selecting the said option will popup a small window where the generator names are displayed. Here, select the ``` controller ``` template.

![Create a new Controller](https://apidocs.io/illustration/ruby?step=addCode1&workspaceFolder=Swagger%20Petstore-Ruby&workspaceName=SwaggerPetstore&projectName=swagger_petstore&gemName=swagger_petstore&gemVer=1.0.0)

Next, a popup window will ask you for a Controller name and included Actions. For controller name provide ``` Hello ``` and include an action named ``` Index ``` and click ``` OK ```.

![Add a new Controller](https://apidocs.io/illustration/ruby?step=addCode2&workspaceFolder=Swagger%20Petstore-Ruby&workspaceName=SwaggerPetstore&projectName=swagger_petstore&gemName=swagger_petstore&gemVer=1.0.0)

A new controller class anmed ``` HelloController ``` will be created in a file named ``` hello_controller.rb ``` containing a method named ``` Index ```. In this method, add code for initialization and a sample for its usage.

![Initialize the library](https://apidocs.io/illustration/ruby?step=addCode3&workspaceFolder=Swagger%20Petstore-Ruby&workspaceName=SwaggerPetstore&projectName=swagger_petstore&gemName=swagger_petstore&gemVer=1.0.0)

## How to Test

You can test the generated SDK and the server with automatically generated test
cases as follows:

  1. From terminal/cmd navigate to the root directory of the SDK.
  2. Invoke: `bundle exec rake`

## Initialization

### Authentication
In order to setup authentication and initialization of the API client, you need the following information.

| Parameter | Description |
|-----------|-------------|
| o_auth_access_token | The OAuth 2.0 access token to be set before API calls |



API client can be initialized as following.

```ruby
# Configuration parameters and credentials
o_auth_access_token = "o_auth_access_token"; # The OAuth 2.0 access token to be set before API calls

client = SwaggerPetstore::SwaggerPetstoreClient.new(o_auth_access_token: o_auth_access_token)
```

The added initlization code can be debugged by putting a breakpoint in the ``` Index ``` method and running the project in debug mode by selecting ``` Run -> Debug 'Development: TestApp' ```.

![Debug the TestApp](https://apidocs.io/illustration/ruby?step=addCode4&workspaceFolder=Swagger%20Petstore-Ruby&workspaceName=SwaggerPetstore&projectName=swagger_petstore&gemName=swagger_petstore&gemVer=1.0.0&initLine=client%2520%253D%2520SwaggerPetstoreClient.new%2528%2527o_auth_access_token%2527%2529)

# Class Reference

## <a name="list_of_controllers"></a>List of Controllers

* [UserController](#user_controller)
* [StoreController](#store_controller)
* [PetController](#pet_controller)

## <a name="user_controller"></a>![Class: ](https://apidocs.io/img/class.png ".UserController") UserController

### Get singleton instance

The singleton instance of the ``` UserController ``` class can be accessed from the API Client.

```ruby
user = client.user
```

### <a name="create_users_with_array_input"></a>![Method: ](https://apidocs.io/img/method.png ".UserController.create_users_with_array_input") create_users_with_array_input

> *Tags:*  ``` Skips Authentication ``` 

> Creates list of users with given input array


```ruby
def create_users_with_array_input(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  ``` Collection ```  | List of user object |


#### Example Usage

```ruby
body = [User.new]

user.create_users_with_array_input(body)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 500 | successful operation |



### <a name="create_users_with_list_input"></a>![Method: ](https://apidocs.io/img/method.png ".UserController.create_users_with_list_input") create_users_with_list_input

> *Tags:*  ``` Skips Authentication ``` 

> Creates list of users with given input array


```ruby
def create_users_with_list_input(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  ``` Collection ```  | List of user object |


#### Example Usage

```ruby
body = [User.new]

user.create_users_with_list_input(body)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 500 | successful operation |



### <a name="create_user"></a>![Method: ](https://apidocs.io/img/method.png ".UserController.create_user") create_user

> *Tags:*  ``` Skips Authentication ``` 

> Create user


```ruby
def create_user(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | Created user object |


#### Example Usage

```ruby
body = User.new

user.create_user(body)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 500 | successful operation |



### <a name="get_login_user"></a>![Method: ](https://apidocs.io/img/method.png ".UserController.get_login_user") get_login_user

> *Tags:*  ``` Skips Authentication ``` 

> Logs user into the system


```ruby
def get_login_user(username, 
                       password); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| username |  ``` Required ```  | The user name for login |
| password |  ``` Required ```  | The password for login in clear text |


#### Example Usage

```ruby
username = 'username'
password = 'password'

result = user.get_login_user(username, password)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Invalid username/password supplied |



### <a name="get_logout_user"></a>![Method: ](https://apidocs.io/img/method.png ".UserController.get_logout_user") get_logout_user

> *Tags:*  ``` Skips Authentication ``` 

> Logs out current logged in user session


```ruby
def get_logout_user; end
```

#### Example Usage

```ruby

user.get_logout_user()

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 500 | successful operation |



### <a name="get_user_by_name"></a>![Method: ](https://apidocs.io/img/method.png ".UserController.get_user_by_name") get_user_by_name

> *Tags:*  ``` Skips Authentication ``` 

> Get user by user name


```ruby
def get_user_by_name(username); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| username |  ``` Required ```  | The name that needs to be fetched. Use user1 for testing. |


#### Example Usage

```ruby
username = 'username'

result = user.get_user_by_name(username)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Invalid username supplied |
| 404 | User not found |



### <a name="update_user"></a>![Method: ](https://apidocs.io/img/method.png ".UserController.update_user") update_user

> *Tags:*  ``` Skips Authentication ``` 

> Updated user


```ruby
def update_user(username, 
                    body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| username |  ``` Required ```  | name that need to be updated |
| body |  ``` Required ```  | Updated user object |


#### Example Usage

```ruby
username = 'username'
body = User.new

user.update_user(username, body)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Invalid user supplied |
| 404 | User not found |



### <a name="delete_user"></a>![Method: ](https://apidocs.io/img/method.png ".UserController.delete_user") delete_user

> *Tags:*  ``` Skips Authentication ``` 

> Delete user


```ruby
def delete_user(username); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| username |  ``` Required ```  | The name that needs to be deleted |


#### Example Usage

```ruby
username = 'username'

user.delete_user(username)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Invalid username supplied |
| 404 | User not found |



[Back to List of Controllers](#list_of_controllers)

## <a name="store_controller"></a>![Class: ](https://apidocs.io/img/class.png ".StoreController") StoreController

### Get singleton instance

The singleton instance of the ``` StoreController ``` class can be accessed from the API Client.

```ruby
store = client.store
```

### <a name="get_inventory"></a>![Method: ](https://apidocs.io/img/method.png ".StoreController.get_inventory") get_inventory

> Returns pet inventories by status


```ruby
def get_inventory; end
```

#### Example Usage

```ruby

result = store.get_inventory()

```


### <a name="delete_order"></a>![Method: ](https://apidocs.io/img/method.png ".StoreController.delete_order") delete_order

> *Tags:*  ``` Skips Authentication ``` 

> Delete purchase order by ID


```ruby
def delete_order(order_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| order_id |  ``` Required ```  | ID of the order that needs to be deleted |


#### Example Usage

```ruby
order_id = 210

store.delete_order(order_id)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Invalid ID supplied |
| 404 | Order not found |



### <a name="create_place_order"></a>![Method: ](https://apidocs.io/img/method.png ".StoreController.create_place_order") create_place_order

> *Tags:*  ``` Skips Authentication ``` 

> Place an order for a pet


```ruby
def create_place_order(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | order placed for purchasing the pet |


#### Example Usage

```ruby
body = Order.new

result = store.create_place_order(body)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Invalid Order |



### <a name="get_order_by_id"></a>![Method: ](https://apidocs.io/img/method.png ".StoreController.get_order_by_id") get_order_by_id

> *Tags:*  ``` Skips Authentication ``` 

> Find purchase order by ID


```ruby
def get_order_by_id(order_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| order_id |  ``` Required ```  | ID of pet that needs to be fetched |


#### Example Usage

```ruby
order_id = 210

result = store.get_order_by_id(order_id)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Invalid ID supplied |
| 404 | Order not found |



[Back to List of Controllers](#list_of_controllers)

## <a name="pet_controller"></a>![Class: ](https://apidocs.io/img/class.png ".PetController") PetController

### Get singleton instance

The singleton instance of the ``` PetController ``` class can be accessed from the API Client.

```ruby
pet = client.pet
```

### <a name="get_pet_by_id"></a>![Method: ](https://apidocs.io/img/method.png ".PetController.get_pet_by_id") get_pet_by_id

> Find pet by ID


```ruby
def get_pet_by_id(pet_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| pet_id |  ``` Required ```  | ID of pet to return |


#### Example Usage

```ruby
pet_id = 210

result = pet.get_pet_by_id(pet_id)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Invalid ID supplied |
| 404 | Pet not found |



### <a name="upload_file"></a>![Method: ](https://apidocs.io/img/method.png ".PetController.upload_file") upload_file

> uploads an image


```ruby
def upload_file(pet_id, 
                    additional_metadata = nil, 
                    file = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| pet_id |  ``` Required ```  | ID of pet to update |
| additional_metadata |  ``` Optional ```  | Additional data to pass to server |
| file |  ``` Optional ```  | file to upload |


#### Example Usage

```ruby
pet_id = 210
additional_metadata = 'additionalMetadata'
file = Faraday::UploadIO.new('PathToFile', 'application/octet-stream')

result = pet.upload_file(pet_id, additional_metadata, file)

```


### <a name="delete_pet"></a>![Method: ](https://apidocs.io/img/method.png ".PetController.delete_pet") delete_pet

> Deletes a pet


```ruby
def delete_pet(pet_id, 
                   api_key = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| pet_id |  ``` Required ```  | Pet id to delete |
| api_key |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
pet_id = 210
api_key = 'api_key'

pet.delete_pet(pet_id, api_key)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Invalid ID supplied |
| 404 | Pet not found |



### <a name="update_pet_with_form"></a>![Method: ](https://apidocs.io/img/method.png ".PetController.update_pet_with_form") update_pet_with_form

> Updates a pet in the store with form data


```ruby
def update_pet_with_form(pet_id, 
                             name = nil, 
                             status = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| pet_id |  ``` Required ```  | ID of pet that needs to be updated |
| name |  ``` Optional ```  | Updated name of the pet |
| status |  ``` Optional ```  | Updated status of the pet |


#### Example Usage

```ruby
pet_id = 210
name = 'name'
status = 'status'

pet.update_pet_with_form(pet_id, name, status)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 405 | Invalid input |



### <a name="find_pets_by_tags"></a>![Method: ](https://apidocs.io/img/method.png ".PetController.find_pets_by_tags") find_pets_by_tags

> Finds Pets by tags


```ruby
def find_pets_by_tags(tags); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| tags |  ``` Required ```  ``` Collection ```  | Tags to filter by |


#### Example Usage

```ruby
tags = ['tags']

result = pet.find_pets_by_tags(tags)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Invalid tag value |



### <a name="find_pets_by_status"></a>![Method: ](https://apidocs.io/img/method.png ".PetController.find_pets_by_status") find_pets_by_status

> Finds Pets by status


```ruby
def find_pets_by_status(status); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| status |  ``` Required ```  ``` Collection ```  | Status values that need to be considered for filter |


#### Example Usage

```ruby
status = [SwaggerPetstore::Status6Enum::AVAILABLE]

result = pet.find_pets_by_status(status)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Invalid status value |



### <a name="add_pet"></a>![Method: ](https://apidocs.io/img/method.png ".PetController.add_pet") add_pet

> Add a new pet to the store


```ruby
def add_pet(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | Pet object that needs to be added to the store |


#### Example Usage

```ruby
body = Pet.new

pet.add_pet(body)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 405 | Invalid input |



### <a name="update_pet"></a>![Method: ](https://apidocs.io/img/method.png ".PetController.update_pet") update_pet

> Update an existing pet


```ruby
def update_pet(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | Pet object that needs to be added to the store |


#### Example Usage

```ruby
body = Pet.new

pet.update_pet(body)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 400 | Invalid ID supplied |
| 404 | Pet not found |
| 405 | Validation exception |



[Back to List of Controllers](#list_of_controllers)



