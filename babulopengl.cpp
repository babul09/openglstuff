#define GLFW_INCLUDE_NONE
#include <GLFW/glfw3.h>
#include <glad/glad.h>
#include <iostream>
#include <math.h>
#include<ctime>

#include "shader.h"

void framebuffer_size_callback(GLFWwindow *window, int width, int height);

void processInput(GLFWwindow *window) {
  if (glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_PRESS)
    glfwSetWindowShouldClose(window, true);
}

int main() {
  glfwInit();
  glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
  glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
  glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

  GLFWwindow *window =
      glfwCreateWindow(800, 600, "learnopenglwithbablu", NULL, NULL);
  if (window == NULL) {
    std::cout << "failed to create GLFW window" << std::endl;
    glfwTerminate();
    return -1;
  }
  glfwMakeContextCurrent(window);

  if (!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress)) {
    std::cout << "Failed to Initialise GLAD" << std::endl;
    return -1;
  }
  glViewport(0, 0, 800, 600);
  glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);

  Shader ourShader("shader.vs", "shader.frag");

  float vertices[] = {
      // positions         // colors
      0.5f,  -0.5f, 0.0f, 1.0f, 0.0f, 0.0f, // bottom right
      -0.5f, -0.5f, 0.0f, 0.0f, 1.0f, 0.0f, // bottom left
      0.0f,  0.5f,  0.0f, 0.0f, 0.0f, 1.0f  // top
  };

  // unsigned int indices[] = {1, 2, 0};

  // VBO BUFFER
  unsigned int VBO;
  // VAO BUFFER
  unsigned int VAO;
  glGenVertexArrays(1, &VAO);

  glGenBuffers(1, &VBO);
  glBindVertexArray(VAO);
  glBindBuffer(GL_ARRAY_BUFFER, VBO);

  glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);

  // unsigned int EBO;
  // glGenBuffers(1, &EBO);

  // glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, EBO);
  // glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices), indices,
  //              GL_STATIC_DRAW);
  glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 6 * sizeof(float), (void *)0);
  glEnableVertexAttribArray(0);

  glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 6 * sizeof(float),
                        (void *)(3 * sizeof(float)));
  glEnableVertexAttribArray(1);

  // glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);

  // glBindBuffer(GL_ARRAY_BUFFER, 0);
  // glBindVertexArray(0);
  // For Deallocation of Buffers

  while (!glfwWindowShouldClose(window)) {
    // input
    processInput(window);

    // rendering commands in here

    glClearColor(0.2f, 0.3f, 0.3f, 0.0f);
    glClear(GL_COLOR_BUFFER_BIT);

    ourShader.use();

    float timeValue = glfwGetTime();
    //  float greenValue = (sin(timeValue) / 2.0f) + 0.5f;
    // float vertexColorLocation = ourShader.ID;

    // glUniform4f(vertexColorLocation, 0.0f, greenValue, 0.0f, 1.0f);
    float offset = sin(timeValue / 0.5f);
    ourShader.setFloat("xOffset", offset);
    glBindVertexArray(VAO);
    glDrawArrays(GL_TRIANGLES, 0, 3);
    // glBindVertexArray(0);
    //  check and call events and swap buffers
    glfwSwapBuffers(window);
    glfwPollEvents();
  }
  glfwTerminate();
  return 0;
}

void framebuffer_size_callback(GLFWwindow *window, int width, int height) {

  glViewport(0, 0, width, height);
}
