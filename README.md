{
  "openapi": "3.0.0",
  "info": {
    "title": "FootbalPlayer",
    "version": "1.0",
    "contact": {
      "name": "Ripon"
    }
  },
  "servers": [
    {
      "description": "",
      "url": "https://fotbalplayer.api"
    }
  ],
  "paths": {
    "/users/{userId}": {
      "parameters": [
        {
          "schema": {
            "type": "integer"
          },
          "name": "userId",
          "in": "path",
          "required": true,
          "description": "Id of an existing user."
        }
      ],
      "get": {
        "summary": "Get User Info by User ID",
        "tags": [],
        "responses": {
          "200": {
            "description": "User Found",
            "content": {
              "application/json": {
                "schema": {
                  "$ref": "#/components/schemas/User"
                },
                "examples": {
                  "Get User Alice Smith": {
                    "value": {
                      "id": 142,
                      "firstName": "Alice",
                      "lastName": "Smith",
                      "email": "alice.smith@gmail.com",
                      "dateOfBirth": "1997-10-31",
                      "emailVerified": true,
                      "signUpDate": "2019-08-24"
                    }
                  }
                }
              }
            }
          },
          "404": {
            "description": "User Not Found"
          }
        },
        "operationId": "get-users-userId",
        "description": "Retrieve the information of the user with the matching user ID."
      },
      "patch": {
        "summary": "Update User Information",
        "operationId": "patch-users-userId",
        "responses": {
          "200": {
            "description": "User Updated",
            "content": {
              "application/json": {
                "schema": {
                  "$ref": "#/components/schemas/User"
                },
                "examples": {
                  "Updated User Rebecca Baker": {
                    "value": {
                      "id": 13,
                      "firstName": "Rebecca",
                      "lastName": "Baker",
                      "email": "rebecca@gmail.com",
                      "dateOfBirth": "1985-10-02",
                      "emailVerified": false,
                      "createDate": "2019-08-24"
                    }
                  }
                }
              }
            }
          },
          "404": {
            "description": "User Not Found"
          },
          "409": {
            "description": "Email Already Taken"
          }
        },
        "description": "Update the infromation of an existing user.",
        "requestBody": {
          "content": {
            "application/json": {
              "schema": {
                "type": "object",
                "properties": {
                  "firstName": {
                    "type": "string"
                  },
                  "lastName": {
                    "type": "string"
                  },
                  "email": {
                    "type": "string",
                    "description": "If a new email is given, the user's email verified property will be set to false."
                  },
                  "dateOfBirth": {
                    "type": "string"
                  }
                }
              },
              "examples": {
                "Update First Name": {
                  "value": {
                    "firstName": "Rebecca"
                  }
                },
                "Update Email": {
                  "value": {
                    "email": "rebecca@gmail.com"
                  }
                },
                "Update Last Name & Date of Birth": {
                  "value": {
                    "lastName": "Baker",
                    "dateOfBirth": "1985-10-02"
                  }
                }
              }
            }
          },
          "description": "Patch user properties to update."
        }
      }
    },
    "/user": {
      "post": {
        "summary": "Create New User",
        "operationId": "post-user",
        "responses": {
          "200": {
            "description": "User Created",
            "content": {
              "application/json": {
                "schema": {
                  "$ref": "#/components/schemas/User"
                },
                "examples": {
                  "New User Bob Fellow": {
                    "value": {
                      "id": 12,
                      "firstName": "Bob",
                      "lastName": "Fellow",
                      "email": "bob.fellow@gmail.com",
                      "dateOfBirth": "1996-08-24",
                      "emailVerified": false,
                      "createDate": "2020-11-18"
                    }
                  }
                }
              }
            }
          },
          "400": {
            "description": "Missing Required Information"
          },
          "409": {
            "description": "Email Already Taken"
          }
        },
        "requestBody": {
          "content": {
            "application/json": {
              "schema": {
                "type": "object",
                "properties": {
                  "firstName": {
                    "type": "string"
                  },
                  "lastName": {
                    "type": "string"
                  },
                  "email": {
                    "type": "string"
                  },
                  "dateOfBirth": {
                    "type": "string",
                    "format": "date"
                  }
                },
                "required": [
                  "firstName",
                  "lastName",
                  "email",
                  "dateOfBirth"
                ]
              },
              "examples": {
                "Create User Bob Fellow": {
                  "value": {
                    "firstName": "Bob",
                    "lastName": "Fellow",
                    "email": "bob.fellow@gmail.com",
                    "dateOfBirth": "1996-08-24"
                  }
                }
              }
            }
          },
          "description": "Post the necessary fields for the API to create a new user."
        },
        "description": "Create a new user."
      }
    }
  },
  "components": {
    "schemas": {
      "User": {
        "title": "User",
        "type": "object",
        "description": "",
        "x-examples": {
          "Alice Smith": {
            "id": 142,
            "firstName": "Alice",
            "lastName": "Smith",
            "email": "alice.smith@gmail.com",
            "dateOfBirth": "1997-10-31",
            "emailVerified": true,
            "signUpDate": "2019-08-24"
          }
        },
        "properties": {
          "id": {
            "type": "integer",
            "description": "Unique identifier for the given user."
          },
          "firstName": {
            "type": "string"
          },
          "lastName": {
            "type": "string"
          },
          "email": {
            "type": "string",
            "format": "email"
          },
          "dateOfBirth": {
            "type": "string",
            "format": "date",
            "example": "1997-10-31"
          },
          "emailVerified": {
            "type": "boolean",
            "description": "Set to true if the user's email has been verified."
          },
          "createDate": {
            "type": "string",
            "format": "date",
            "description": "The date that the user was created."
          }
        },
        "required": [
          "id",
          "firstName",
          "lastName",
          "email",
          "emailVerified"
        ]
      }
    },
    "securitySchemes": {
      "API Key - 1": {
        "type": "http",
        "scheme": "basic"
      }
    }
  }
}
