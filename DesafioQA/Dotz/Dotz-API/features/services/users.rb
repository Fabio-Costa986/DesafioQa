module REST
    class Users
        include HTTParty

        headers 'Content-Type' => 'application/json'
        base_uri CONFIG["base_uri"]

        def get_users
            self.class.get("?q=Osasco,BR&appid=050c10d7156c196a31c7d7d82780d816&units=metric")
        end    
        
        def get_user
            self.class.get("?lat=-23.5325&lon=-46.7917&appid=050c10d7156c196a31c7d7d82780d816&units=metric")
        end  
        
        def get_invalido
            self.class.get("?lat=-23.5325&lon=-46.7917&appid=c35205acc8938d356723d78d1d88a74&units=metric")
        end    
    end
end

