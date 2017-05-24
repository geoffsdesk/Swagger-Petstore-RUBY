# This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).

module SwaggerPetstore
  class SwaggerPetstoreClient
    # Singleton access to user controller
    # @return [UserController] Returns the controller instance
    def user
      UserController.instance
    end

    # Singleton access to store controller
    # @return [StoreController] Returns the controller instance
    def store
      StoreController.instance
    end

    # Singleton access to pet controller
    # @return [PetController] Returns the controller instance
    def pet
      PetController.instance
    end

    # Initializer with authentication and configuration parameters
    def initialize(o_auth_access_token: nil)
      Configuration.o_auth_access_token = o_auth_access_token if o_auth_access_token
    end
  end
end
