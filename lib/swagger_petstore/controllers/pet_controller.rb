# This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).

module SwaggerPetstore
  class PetController < BaseController
    @@instance = PetController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Find pet by ID
    # @param [Long] pet_id Required parameter: ID of pet to return
    # @return Pet response from the API call
    def get_pet_by_id(pet_id)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/pet/{petId}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'petId' => pet_id
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json'
      }

      # prepare and execute HttpRequest
      _request = @http_client.get _query_url, headers: _headers
      OAuth2.apply(_request)
      _context = execute_request(_request)

      # validate response against endpoint and global error codes
      if _context.response.status_code == 400
        raise APIException.new 'Invalid ID supplied', _context
      elsif _context.response.status_code == 404
        raise APIException.new 'Pet not found', _context
      end
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return Pet.from_hash(decoded)
    end

    # uploads an image
    # @param [Long] pet_id Required parameter: ID of pet to update
    # @param [String] additional_metadata Optional parameter: Additional data to pass to server
    # @param [File] file Optional parameter: file to upload
    # @return ApiResponse response from the API call
    def upload_file(pet_id, 
                    additional_metadata = nil, 
                    file = nil)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/pet/{petId}/uploadImage'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'petId' => pet_id
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json'
      }

      # prepare form parameters	  
      _parameters = {
        'additionalMetadata' => additional_metadata,
        'file' => file
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, headers: _headers, parameters: _parameters
      OAuth2.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return ApiResponse.from_hash(decoded)
    end

    # Deletes a pet
    # @param [Long] pet_id Required parameter: Pet id to delete
    # @param [String] api_key Optional parameter: Example: 
    # @return void response from the API call
    def delete_pet(pet_id, 
                   api_key = nil)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/pet/{petId}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'petId' => pet_id
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'api_key' => api_key
      }

      # prepare and execute HttpRequest
      _request = @http_client.delete _query_url, headers: _headers
      OAuth2.apply(_request)
      _context = execute_request(_request)

      # validate response against endpoint and global error codes
      if _context.response.status_code == 400
        raise APIException.new 'Invalid ID supplied', _context
      elsif _context.response.status_code == 404
        raise APIException.new 'Pet not found', _context
      end
      validate_response(_context)
    end

    # Updates a pet in the store with form data
    # @param [Long] pet_id Required parameter: ID of pet that needs to be updated
    # @param [String] name Optional parameter: Updated name of the pet
    # @param [String] status Optional parameter: Updated status of the pet
    # @return void response from the API call
    def update_pet_with_form(pet_id, 
                             name = nil, 
                             status = nil)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/pet/{petId}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'petId' => pet_id
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'name' => name,
        'status' => status
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, parameters: _parameters
      OAuth2.apply(_request)
      _context = execute_request(_request)

      # validate response against endpoint and global error codes
      if _context.response.status_code == 405
        raise APIException.new 'Invalid input', _context
      end
      validate_response(_context)
    end

    # Finds Pets by tags
    # @param [List of String] tags Required parameter: Tags to filter by
    # @return List of Pet response from the API call
    def find_pets_by_tags(tags)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/pet/findByTags'
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'tags' => tags
      }, array_serialization: Configuration.array_serialization
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json'
      }

      # prepare and execute HttpRequest
      _request = @http_client.get _query_url, headers: _headers
      OAuth2.apply(_request)
      _context = execute_request(_request)

      # validate response against endpoint and global error codes
      if _context.response.status_code == 400
        raise APIException.new 'Invalid tag value', _context
      end
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return decoded.map{|element| Pet.from_hash(element)}
    end

    # Finds Pets by status
    # @param [List of Status6Enum] status Required parameter: Status values that need to be considered for filter
    # @return List of Pet response from the API call
    def find_pets_by_status(status)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/pet/findByStatus'
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'status' => status
      }, array_serialization: Configuration.array_serialization
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json'
      }

      # prepare and execute HttpRequest
      _request = @http_client.get _query_url, headers: _headers
      OAuth2.apply(_request)
      _context = execute_request(_request)

      # validate response against endpoint and global error codes
      if _context.response.status_code == 400
        raise APIException.new 'Invalid status value', _context
      end
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return decoded.map{|element| Pet.from_hash(element)}
    end

    # Add a new pet to the store
    # @param [Pet] body Required parameter: Pet object that needs to be added to the store
    # @return void response from the API call
    def add_pet(body)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/pet'
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, headers: _headers, parameters: body.to_json
      OAuth2.apply(_request)
      _context = execute_request(_request)

      # validate response against endpoint and global error codes
      if _context.response.status_code == 405
        raise APIException.new 'Invalid input', _context
      end
      validate_response(_context)
    end

    # Update an existing pet
    # @param [Pet] body Required parameter: Pet object that needs to be added to the store
    # @return void response from the API call
    def update_pet(body)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/pet'
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }

      # prepare and execute HttpRequest
      _request = @http_client.put _query_url, headers: _headers, parameters: body.to_json
      OAuth2.apply(_request)
      _context = execute_request(_request)

      # validate response against endpoint and global error codes
      if _context.response.status_code == 400
        raise APIException.new 'Invalid ID supplied', _context
      elsif _context.response.status_code == 404
        raise APIException.new 'Pet not found', _context
      elsif _context.response.status_code == 405
        raise APIException.new 'Validation exception', _context
      end
      validate_response(_context)
    end
  end
end
