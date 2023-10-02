INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

/*Cadastro de Cursos*/
INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Bootcamp HTML', 'https://upload.wikimedia.org/wikipedia/commons/2/27/Switch-course-book.svg', 'https://upload.wikimedia.org/wikipedia/commons/1/1f/Switch-course-book-grey.svg');

/*Cadastro de Ofertas por Curso*/
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2022-03-09T03:00:00Z', TIMESTAMP WITH TIME ZONE '2023-03-09T03:00:00Z', 1);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2022-04-09T03:00:00Z', TIMESTAMP WITH TIME ZONE '2023-04-09T03:00:00Z', 1);

/*Cadastro de Matérias por Oferta*/
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Trilha HTML', 'Trilha principal do curso', 1, 'https://upload.wikimedia.org/wikipedia/commons/1/1f/Switch-course-book-grey.svg', 1, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Forum', 'Tire suas dúvidas', 2, 'https://upload.wikimedia.org/wikipedia/commons/1/1f/Switch-course-book-grey.svg', 2, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Lives', 'Lives Exclusivas', 3, 'https://upload.wikimedia.org/wikipedia/commons/1/1f/Switch-course-book-grey.svg', 0, 1);

/*Cadastro de Seções por Conteúdo*/
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 1', 'Iniciando o Curso', 1, 'https://upload.wikimedia.org/wikipedia/commons/1/1f/Switch-course-book-grey.svg', 1, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 2', 'Tags HTML', 2, 'https://upload.wikimedia.org/wikipedia/commons/1/1f/Switch-course-book-grey.svg', 1, 1);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 3', 'Links HTML', 3, 'https://upload.wikimedia.org/wikipedia/commons/1/1f/Switch-course-book-grey.svg', 1, 2);

/*Cadastro de Matrículas*/
INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2022-03-09T13:00:00Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2022-03-09T13:00:00Z', null, true, false);

/*Cadastro de Aulas por Seção de Conteúdo*/
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 01 do Cap. 01', 1, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (1, 'Teste', 'https://www.youtube.com/watch?v=rdyUD21oQ6E&ab_channel=BURPSONLINE');

/*Cadastro de Aulas por Seção de Conteúdo*/
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 02 do Cap. 01', 2, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (2, 'Teste', 'https://www.youtube.com/watch?v=rdyUD21oQ6E&ab_channel=BURPSONLINE');

/*Cadastro de Aulas por Seção de Conteúdo*/
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 03 do Cap. 01', 3, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (3, 'Teste', 'https://www.youtube.com/watch?v=rdyUD21oQ6E&ab_channel=BURPSONLINE');

/*Cadastro de Tarefas por Seção de Conteúdo*/
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Tarefa do Capítulo 01', 4, 1);
INSERT INTO tb_task(id, description, question_Count, approval_Count, weight, due_Date) VALUES (4, 'Boa sorte', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2022-03-25T13:00:00Z');

/*Matrículas que Terminaram as Aulas*/
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);

/*Cadastro de Notificações por Usuário*/
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Primeiro feedback de tarefa: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-10T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Segundo feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Terceiro feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);

/*Endereço do Repositório da Tarefa realizada*/
INSERT INTO tb_deliver (uri, moment, status, feedback, correct_Count, lesson_id, user_id, offer_id) VALUES ('https://github.com/devsuperior/bds-dslearn', TIMESTAMP WITH TIME ZONE '2020-12-10T10:00:00Z', 0, null, null, 4, 1, 1);

/*Cadastro de Tópicos*/
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 1', 'Corpo do tópico 1', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', 1, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 2', 'Corpo do tópico 2', TIMESTAMP WITH TIME ZONE '2020-12-13T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 3', 'Corpo do tópico 3', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 4', 'Corpo do tópico 4', TIMESTAMP WITH TIME ZONE '2020-12-15T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 5', 'Corpo do tópico 5', TIMESTAMP WITH TIME ZONE '2020-12-16T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 6', 'Corpo do tópico 6', TIMESTAMP WITH TIME ZONE '2020-12-17T13:00:00Z', 2, 1, 3);

/*Cadastro de Tópicos por Usuários*/
INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (1, 2);
INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (2, 1);

/*Cadastro de Respostas por Tópico e Usuário*/
INSERT INTO tb_reply (body, moment, topic_id, author_id) VALUES ('Tente reiniciar o computador', TIMESTAMP WITH TIME ZONE '2020-12-15T13:00:00Z', 1, 2);
INSERT INTO tb_reply (body, moment, topic_id, author_id) VALUES ('Deu certo, valeu!', TIMESTAMP WITH TIME ZONE '2020-12-20T13:00:00Z', 1, 1);

/*Cadastro de Likes por Respostas*/
INSERT INTO tb_reply_likes (reply_id, user_id) VALUES (1, 1);