package com.company;

import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;
import com.sun.net.httpserver.HttpExchange;
import com.sun.net.httpserver.HttpHandler;
import com.sun.net.httpserver.HttpServer;

import java.io.IOException;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.sql.SQLException;
import java.util.ArrayList;

public class Server {
    private UsersRepository usersRepo;

    public Server(UsersRepository ur) {
        this.usersRepo = ur;
    }

    public void start() throws IOException {
        HttpServer server = HttpServer.create(new InetSocketAddress(8000), 0);
        server.createContext("/users", new UsersHandler(usersRepo));
        server.setExecutor(null);
        server.start();
    }

    static class UsersHandler implements HttpHandler {
        private UsersRepository usersRepo;

        public UsersHandler(UsersRepository ur) {
            this.usersRepo = ur;
        }

        @Override
        public void handle(HttpExchange t) throws IOException {
            ArrayList<User> users = null;

            try {
                users = usersRepo.getAll();
            } catch (SQLException e) {
                e.printStackTrace();
            }

            Gson g = new Gson();

            String response = g.toJson(users);
            t.sendResponseHeaders(200, response.length());
            OutputStream os = t.getResponseBody();
            os.write(response.getBytes());
            os.close();
        }
    }
}
