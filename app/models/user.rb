class User < ApplicationRecord
	validates :username, presence: {message:"Username é obrigatório"}, 
						uniqueness: {message: "Username não disponível"}
	has_secure_password
	validates :password, presence: {message: "Insira uma senha"}, length: {minimum: 6}
end
