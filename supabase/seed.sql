SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.8
-- Dumped by pg_dump version 15.8

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") VALUES
	('00000000-0000-0000-0000-000000000000', '7ccf06b3-c188-49bb-989b-d8144ff2e95c', '{"action":"user_signedup","actor_id":"396706ef-5cf7-4c42-8ccb-7f59e4c2c19b","actor_username":"jrmclain85@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2025-01-15 04:43:37.915442+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ca7c2206-1cff-4545-b599-d93fd85a3188', '{"action":"login","actor_id":"396706ef-5cf7-4c42-8ccb-7f59e4c2c19b","actor_username":"jrmclain85@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-15 04:43:37.919166+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', '396706ef-5cf7-4c42-8ccb-7f59e4c2c19b', 'authenticated', 'authenticated', 'jrmclain85@gmail.com', '$2a$10$hn727w7jj6QlGwmzjqofDe.drPNcROUjokkfBL8FxK2Jz6AJTTZKO', '2025-01-15 04:43:37.917221+00', NULL, '', NULL, '', NULL, '', '', NULL, '2025-01-15 04:43:37.919765+00', '{"provider": "email", "providers": ["email"]}', '{"sub": "396706ef-5cf7-4c42-8ccb-7f59e4c2c19b", "email": "jrmclain85@gmail.com", "email_verified": false, "phone_verified": false}', NULL, '2025-01-15 04:43:37.896479+00', '2025-01-15 04:43:37.928966+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('396706ef-5cf7-4c42-8ccb-7f59e4c2c19b', '396706ef-5cf7-4c42-8ccb-7f59e4c2c19b', '{"sub": "396706ef-5cf7-4c42-8ccb-7f59e4c2c19b", "email": "jrmclain85@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2025-01-15 04:43:37.909361+00', '2025-01-15 04:43:37.909388+00', '2025-01-15 04:43:37.909388+00', 'd252c41a-937f-47f6-aa0c-0619c3832b15');


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag") VALUES
	('42a84729-a78e-4a9b-8d1e-c8bc5387e415', '396706ef-5cf7-4c42-8ccb-7f59e4c2c19b', '2025-01-15 04:43:37.919807+00', '2025-01-15 04:43:37.919807+00', NULL, 'aal1', NULL, NULL, 'node', '172.18.0.1', NULL);


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") VALUES
	('42a84729-a78e-4a9b-8d1e-c8bc5387e415', '2025-01-15 04:43:37.930981+00', '2025-01-15 04:43:37.930981+00', 'password', '0178637a-dc5c-48e7-a4ef-5775fd3caf0f');


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") VALUES
	('00000000-0000-0000-0000-000000000000', 1, 'JEMscLIRQyCQBXTHKWbMug', '396706ef-5cf7-4c42-8ccb-7f59e4c2c19b', false, '2025-01-15 04:43:37.923155+00', '2025-01-15 04:43:37.923155+00', NULL, '42a84729-a78e-4a9b-8d1e-c8bc5387e415');


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: key; Type: TABLE DATA; Schema: pgsodium; Owner: supabase_admin
--



--
-- Data for Name: cards; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."cards" ("id", "title", "slug_id", "rank_int", "upright_keywords", "reversed_keywords", "reversed_description", "upright_description", "fools_journey", "arcana") VALUES
	(1, 'The Fool', 'major0', 0, 'new beginnings,adventure,spontaneity,innocence', 'naivety,recklessness,unpreparedness', 'When reversed, The Fool warns against recklessness, suggesting you may be taking unnecessary risks without proper forethought. It encourages caution.', 'The Fool card represents new beginnings, adventure, and a leap into the unknown. It encourages you to embrace change with a sense of curiosity and wonder.', 'Represents the beginning of the journey, emphasizing innocence and stepping into the unknown.', 'Major'),
	(2, 'The Magician', 'major1', 1, 'manifestation,power,resourcefulness,creativity', 'manipulation,poor planning,untapped potential', 'When reversed, The Magician can indicate a misuse of power or failing to take advantage of opportunities. It calls for greater self-awareness.', 'The Magician signifies manifestation, using your skills and talents to bring your desires into reality. It suggests you have all the resources you need.', 'Symbolizes taking control of one''s own life and realizing personal power.', 'Major'),
	(3, 'The High Priestess', 'major2', 2, 'intuition,subconscious,mystery,inner wisdom', 'secrets,withdrawal,repressed intuition', 'When reversed, The High Priestess warns of secrets kept from you or a disconnection from your intuition. It encourages you to pay attention to your inner voice.', 'The High Priestess invites you to connect with your intuition and seek answers within. It represents mystery and the unknown.', 'Represents the encounter with the mysteries of life and the need for introspection.', 'Major'),
	(4, 'The Empress', 'major3', 3, 'abundance,nurturing,fertility,beauty', 'dependence,creative block,neglect', 'When reversed, The Empress suggests a lack of self-care or an overreliance on others. It may indicate creative stagnation or a need for self-nurturing.', 'The Empress embodies fertility, nurturing energy, and a deep connection to nature. She symbolizes abundance in all forms and encourages creativity.', 'Represents the encounter with the nurturing aspects of life, offering growth and creativity.', 'Major'),
	(5, 'The Emperor', 'major4', 4, 'authority,structure,control,discipline', 'tyranny,rigidity,lack of discipline', 'When reversed, The Emperor can indicate misuse of authority or excessive control. It suggests a need to balance rigidity with flexibility.', 'The Emperor symbolizes authority, structure, and the power of leadership. It encourages taking control of your situation with discipline and determination.', 'Represents the encounter with authority and the need to establish order in life.', 'Major'),
	(6, 'The Hierophant', 'major5', 5, 'tradition,spirituality,conformity,education', 'rebellion,restriction,challenge to tradition', 'When reversed, The Hierophant suggests a resistance to traditional values or a challenge to societal norms. It encourages you to find your own path.', 'The Hierophant represents tradition, spiritual wisdom, and the pursuit of knowledge. It emphasizes learning from established institutions and spiritual guidance.', 'Represents the encounter with tradition and the guidance of mentors or teachers.', 'Major'),
	(7, 'The Lovers', 'major6', 6, 'love,partnership,choices,harmony', 'disharmony,imbalance,misalignment', 'When reversed, The Lovers may indicate conflict in relationships or inner disharmony. It suggests a need to reassess your values and connections.', 'The Lovers card signifies deep bonds, meaningful connections, and choices in relationships. It encourages you to align with what feels true to your heart.', 'Represents the encounter with love and the power of choices that shape one''s path.', 'Major'),
	(8, 'The Chariot', 'major7', 7, 'determination,victory,willpower,control', 'lack of direction,self-doubt,losing control', 'When reversed, The Chariot may signal a loss of direction or lack of control. It suggests the need to regain focus and harness your inner strength.', 'The Chariot represents determination, focused effort, and the triumph that comes from maintaining control over conflicting forces. It encourages moving forward with confidence.', 'Represents the triumph of willpower and the ability to control one''s destiny.', 'Major'),
	(9, 'Strength', 'major8', 8, 'courage,inner strength,compassion,patience', 'self-doubt,weakness,insecurity', 'When reversed, Strength can indicate self-doubt or an inability to manage one''s emotions. It calls for patience and self-acceptance.', 'Strength symbolizes inner power and the gentle control of one''s impulses. It encourages you to face challenges with compassion and self-confidence.', 'Represents the encounter with inner strength and the lesson of mastering one''s emotions.', 'Major'),
	(10, 'The Hermit', 'major9', 9, 'introspection,soul-searching,solitude,inner guidance', 'isolation,withdrawal,loneliness', 'When reversed, The Hermit warns of excessive isolation or avoidance of personal truths. It encourages finding balance between solitude and connection.', 'The Hermit invites you to take a step back and reflect. It represents a time of introspection and seeking inner wisdom, away from external distractions.', 'Represents the period of soul-searching and finding one''s own truth.', 'Major'),
	(11, 'Wheel of Fortune', 'major10', 10, 'change,cycles,destiny,luck', 'resistance to change,bad luck,lack of control', 'When reversed, the Wheel of Fortune can indicate resistance to change or feeling stuck in a cycle of bad luck. It suggests finding a way to adapt.', 'The Wheel of Fortune signifies cycles of change and the turning points of life. It reminds you that life is in constant motion, bringing new opportunities.', 'Represents the realization that life is ever-changing, with cycles of fortune and misfortune.', 'Major'),
	(12, 'Justice', 'major11', 11, 'fairness,truth,balance,law', 'injustice,dishonesty,lack of accountability', 'When reversed, Justice warns of imbalance, dishonesty, or unfair treatment. It suggests a need to address issues of accountability.', 'Justice represents fairness, balance, and the consequences of actions. It calls for honesty and accountability in all decisions.', 'Represents the need for fairness and understanding the balance between actions and their consequences.', 'Major'),
	(13, 'The Hanged Man', 'major12', 12, 'suspension,letting go,new perspective,surrender', 'resistance,stalling,indecision', 'When reversed, The Hanged Man indicates resistance to change or a struggle with letting go. It suggests you may be feeling stuck or unsure of your next step.', 'The Hanged Man symbolizes a time of pause and reflection, encouraging you to see things from a different angle. It suggests letting go of control and allowing a new perspective to emerge.', 'Represents the need to surrender control and see life from a different angle.', 'Major'),
	(14, 'Death', 'major13', 13, 'transformation,endings,rebirth,change', 'resistance to change,stagnation,fear of letting go', 'When reversed, Death may suggest fear of change or an inability to let go. It encourages you to embrace transformation for growth.', 'The Death card signifies the end of a cycle and the beginning of a new one. It represents transformation and the release of what no longer serves you.', 'Represents the inevitability of endings and the potential for transformation.', 'Major'),
	(15, 'Temperance', 'major14', 14, 'balance,moderation,patience,harmony', 'imbalance,excess,lack of patience', 'When reversed, Temperance may indicate a lack of balance or going to extremes. It suggests a need to reassess and find equilibrium.', 'Temperance symbolizes balance, moderation, and the blending of opposites. It encourages you to find harmony in your life and approach situations with patience.', 'Represents the lesson of finding balance and learning to integrate opposing aspects.', 'Major'),
	(16, 'The Devil', 'major15', 15, 'bondage,materialism,addiction,temptation', 'freedom,release,overcoming,awareness', 'When reversed, The Devil indicates a breaking of bonds and liberation from negative influences. It suggests an opportunity for self-awareness and freedom.', 'The Devil represents the chains of addiction, materialism, and temptation. It suggests being trapped by desires or negative patterns, urging you to face what holds you back.', 'Represents the encounter with one''s inner demons and the struggle between desire and liberation.', 'Major'),
	(17, 'The Tower', 'major16', 16, 'upheaval,sudden change,revelation,chaos', 'resistance to change,fear of disaster,averted crisis', 'When reversed, The Tower suggests an aversion to change or an attempt to avoid an inevitable crisis. It may indicate the need to accept transformation, even if it is challenging.', 'The Tower signifies sudden upheaval and the breaking down of old structures. It represents a moment of revelation that forces you to confront the truth and start anew.', 'Represents the collapse of illusions and the upheaval that brings new understanding.', 'Major'),
	(18, 'The Star', 'major17', 17, 'hope,inspiration,renewal,serenity', 'despair,lack of faith,disconnection', 'When reversed, The Star can indicate a loss of hope or disconnection from your inner self. It suggests a need to reconnect with your faith and find your direction.', 'The Star brings a message of hope, inspiration, and a sense of peace after the storm. It encourages you to trust in the future and follow your inner guiding light.', 'Represents the light of hope and inspiration after facing darkness and challenges.', 'Major'),
	(19, 'The Moon', 'major18', 18, 'illusion,intuition,unconscious,mystery', 'clarity,confusion,fear', 'When reversed, The Moon can represent a release from illusion or a struggle with confusion and fear. It calls for clarity and understanding of your inner self.', 'The Moon symbolizes the world of dreams, intuition, and the unconscious. It suggests a time of uncertainty and invites you to explore your inner world and hidden emotions.', 'Represents the journey through the shadows of the mind and confronting illusions.', 'Major'),
	(20, 'The Sun', 'major19', 19, 'joy,success,vitality,positivity', 'temporary setbacks,lack of enthusiasm,clouded joy', 'When reversed, The Sun may indicate a period of temporary setbacks or a lack of enthusiasm. It suggests finding ways to reconnect with your inner joy and positivity.', 'The Sun represents joy, success, and positivity. It signifies a time of abundance, vitality, and clarity, where everything becomes illuminated with a warm and optimistic light.', 'Represents the realization of true happiness and the celebration of life’s blessings.', 'Major'),
	(21, 'Judgement', 'major20', 20, 'rebirth,inner calling,awakening,reflection', 'self-doubt,denial,failure to learn,lack of reflection', 'When reversed, Judgement can indicate self-doubt or an unwillingness to face past mistakes. It suggests a need for self-forgiveness and a readiness to embrace new opportunities.', 'Judgement represents rebirth, self-evaluation, and a spiritual awakening. It calls you to reflect on your past actions and decisions, offering a chance for renewal and transformation.', 'Represents the process of self-assessment and understanding one''s place in the larger cosmic order.', 'Major'),
	(22, 'The World', 'major21', 21, 'completion,fulfillment,wholeness,achievement', 'incompletion,stagnation,lack of closure,delayed success', 'When reversed, The World can suggest unfinished business or a feeling of incompletion. It encourages you to tie up loose ends and seek closure before moving forward.', 'The World represents the culmination of a journey and the achievement of goals. It symbolizes wholeness, fulfillment, and the realization of one''s purpose.', 'Represents the end of the journey and the realization of unity with the world and self.', 'Major'),
	(23, 'Ace of Cups', 'cups1', 1, 'new love,emotional awakening,compassion,creativity', 'blocked emotions,repressed feelings,emptiness', 'When reversed, the Ace of Cups suggests blocked or repressed emotions. It may indicate a need to release pent-up feelings and allow yourself to be vulnerable.', 'The Ace of Cups signifies a new beginning in emotional experiences. It represents the overflowing potential of love, compassion, and creativity, inviting you to open your heart.', NULL, 'Minor'),
	(24, 'Two of Cups', 'cups2', 2, 'partnership,unity,attraction,mutual respect', 'imbalance,miscommunication,disconnection', 'When reversed, the Two of Cups may indicate a lack of harmony in relationships or misunderstandings. It suggests a need to work on communication and balance.', 'The Two of Cups represents mutual attraction, partnership, and emotional connection. It signifies a harmonious bond between two people, built on trust and respect.', NULL, 'Minor'),
	(25, 'Three of Cups', 'cups3', 3, 'celebration,friendship,community,joy', 'isolation,overindulgence,lack of support', 'When reversed, the Three of Cups can indicate a sense of isolation or difficulties in connecting with others. It may suggest focusing on finding your social support system.', 'The Three of Cups signifies celebration, friendship, and coming together in joy. It highlights the importance of community and shared happiness.', NULL, 'Minor'),
	(26, 'Four of Cups', 'cups4', 4, 'contemplation,apathy,reevaluation,discontent', 'awareness,new outlook,acceptance', 'When reversed, the Four of Cups suggests a new awareness or a shift in perspective, allowing you to see new possibilities and move beyond dissatisfaction.', 'The Four of Cups represents a time of introspection and contemplation. It suggests a focus on what is missing or dissatisfaction with the current situation.', NULL, 'Minor'),
	(27, 'Five of Cups', 'cups5', 5, 'loss,regret,disappointment,grief', 'acceptance,moving on,forgiveness', 'When reversed, the Five of Cups indicates a readiness to move beyond grief and begin the process of healing and forgiveness. It suggests a shift towards acceptance.', 'The Five of Cups represents sorrow and focusing on what has been lost. It suggests feelings of regret and disappointment, but also reminds you to acknowledge what still remains.', NULL, 'Minor'),
	(28, 'Six of Cups', 'cups6', 6, 'nostalgia,childhood memories,reunion,innocence', 'living in the past,stuck in memories,moving forward', 'When reversed, the Six of Cups warns against dwelling too much on the past, suggesting the importance of letting go of old memories and embracing the present.', 'The Six of Cups evokes memories of childhood and the past. It represents nostalgia and the innocence of simpler times, suggesting a joyful reunion or revisiting old connections.', NULL, 'Minor'),
	(29, 'Seven of Cups', 'cups7', 7, 'choices,illusion,fantasy,daydreaming', 'clarity,overcoming confusion,decisiveness', 'When reversed, the Seven of Cups indicates clarity and a focus on making concrete decisions. It suggests overcoming confusion and seeing things as they are.', 'The Seven of Cups represents the many possibilities and choices available, but also warns of illusions and fantasies. It suggests the need to distinguish between what is real and what is not.', NULL, 'Minor'),
	(30, 'Eight of Cups', 'cups8', 8, 'walking away,abandonment,seeking truth,letting go', 'fear of change,avoidance,staying stuck', 'When reversed, the Eight of Cups can indicate a fear of change or a reluctance to move on from a situation. It suggests the need to confront what is holding you back.', 'The Eight of Cups signifies a need to leave behind something that no longer serves you, even if it is difficult. It represents a quest for deeper understanding and personal truth.', NULL, 'Minor'),
	(31, 'Nine of Cups', 'cups9', 9, 'contentment,satisfaction,gratitude,wish fulfillment', 'dissatisfaction,greed,unfulfilled wishes', 'When reversed, the Nine of Cups may indicate dissatisfaction or a sense that something is missing despite outward success. It suggests reassessing your true desires.', 'The Nine of Cups represents personal satisfaction, contentment, and the fulfillment of wishes. It suggests a time to enjoy the fruits of your efforts and feel gratitude for what you have achieved.', NULL, 'Minor'),
	(32, 'Ten of Cups', 'cups10', 10, 'happiness,emotional fulfillment,family,harmony', 'domestic strife,broken relationships,unhappiness', 'When reversed, the Ten of Cups may indicate tension or discord in relationships or a feeling of disconnection from loved ones. It suggests addressing underlying issues to restore harmony.', 'The Ten of Cups symbolizes emotional fulfillment, family harmony, and long-term happiness. It represents a sense of peace and contentment in relationships and personal life.', NULL, 'Minor'),
	(33, 'Page of Cups', 'cups11', 11, 'creativity,curiosity,new feelings,imagination', 'emotional immaturity,insecurity,creative block', 'When reversed, the Page of Cups can indicate emotional immaturity or a struggle to express feelings. It suggests the need to confront insecurities and develop emotional awareness.', 'The Page of Cups represents youthful creativity, curiosity, and the stirrings of new emotional experiences. It encourages embracing imagination and exploring your feelings.', NULL, 'Minor'),
	(34, 'Knight of Cups', 'cups12', 12, 'romantic,charm,idealism,following dreams', 'moodiness,unrealistic expectations,emotional instability', 'When reversed, the Knight of Cups may indicate moodiness or unrealistic expectations, particularly in relationships. It suggests the need to balance idealism with reality.', 'The Knight of Cups embodies romance, charm, and the pursuit of dreams. It suggests following your heart and seeking out beauty and love in the world around you.', NULL, 'Minor'),
	(35, 'Queen of Cups', 'cups13', 13, 'compassion,empathy,intuitive insight,emotional balance', 'emotional insecurity,dependence,overwhelm', 'When reversed, the Queen of Cups may indicate emotional overwhelm or a tendency to become too dependent on others for emotional support. It suggests the need to establish healthy emotional boundaries.', 'The Queen of Cups embodies compassion, empathy, and deep emotional understanding. She represents a nurturing presence that is in tune with her feelings and intuition.', NULL, 'Minor'),
	(36, 'King of Cups', 'cups14', 14, 'emotional maturity,balance,diplomacy,compassionate leadership', 'manipulation,coldness,emotional instability', 'When reversed, the King of Cups can indicate emotional manipulation or instability, suggesting a need to reconnect with emotional integrity and compassion.', 'The King of Cups represents emotional maturity, balance, and the ability to navigate complex feelings with compassion and strength. He encourages you to lead with empathy and wisdom.', NULL, 'Minor'),
	(37, 'Ace of Swords', 'swords1', 1, 'clarity,breakthrough,new ideas,mental clarity', 'confusion,chaos,miscommunication,lack of insight', 'When reversed, the Ace of Swords suggests confusion, misunderstandings, or difficulty in seeing the truth. It may indicate a need to clear away mental clutter and focus on finding clarity.', 'The Ace of Swords symbolizes a new beginning marked by mental clarity and a breakthrough in understanding. It represents the power of a fresh perspective and the potential to cut through confusion.', NULL, 'Minor'),
	(38, 'Two of Swords', 'swords2', 2, 'indecision,stalemate,compromise,difficult choices', 'confusion,overwhelm,indecisiveness', 'When reversed, the Two of Swords may indicate feeling overwhelmed by choices or an inability to make a decision. It suggests the need to confront the issue directly rather than avoid it.', 'The Two of Swords represents a need to make a difficult decision, often involving a compromise or balance between two opposing options. It suggests a time of reflection and seeking inner guidance.', NULL, 'Minor'),
	(39, 'Three of Swords', 'swords3', 3, 'heartbreak,pain,sorrow,betrayal', 'healing,forgiveness,recovery', 'When reversed, the Three of Swords suggests the beginning of healing and recovery from past wounds. It encourages forgiveness and letting go of lingering pain.', 'The Three of Swords represents deep emotional pain, often related to heartbreak or betrayal. It suggests the need to confront and process these feelings to move forward.', NULL, 'Minor'),
	(40, 'Four of Swords', 'swords4', 4, 'rest,recuperation,meditation,solitude', 'restlessness,burnout,lack of progress', 'When reversed, the Four of Swords suggests restlessness or an inability to find peace. It may indicate the need to slow down before burnout occurs.', 'The Four of Swords signifies a time for rest, retreat, and recovery. It encourages taking a break to recharge your mind and body before moving forward.', NULL, 'Minor'),
	(41, 'Five of Swords', 'swords5', 5, 'conflict,defeat,disagreement,dishonor', 'reconciliation,regret,compromise,forgiveness', 'When reversed, the Five of Swords can indicate the desire to move past conflict, make amends, or regret over harsh actions. It suggests a time for reconciliation and healing.', 'The Five of Swords represents conflict, tension, and the cost of winning at any price. It suggests the need to consider whether a victory is worth the damage caused.', NULL, 'Minor'),
	(42, 'Six of Swords', 'swords6', 6, 'transition,moving on,recovery,journey', 'resistance to change,unfinished business,lingering difficulties', 'When reversed, the Six of Swords can indicate resistance to change or being stuck in the past. It suggests the need to fully let go before moving forward.', 'The Six of Swords signifies a journey of recovery, leaving behind difficulties, and moving towards a calmer, more peaceful state. It suggests progress through transition.', NULL, 'Minor'),
	(43, 'Seven of Swords', 'swords7', 7, 'deception,strategy,betrayal,trickery', 'confession,conscience,getting caught', 'When reversed, the Seven of Swords can indicate a guilty conscience, a desire to come clean, or the exposure of secrets. It suggests the importance of honesty and integrity.', 'The Seven of Swords represents deception, cunning, and strategic thinking. It suggests the need to use wit and tact in dealing with complex situations, but also warns of dishonesty.', NULL, 'Minor'),
	(44, 'Eight of Swords', 'swords8', 8, 'restriction,helplessness,self-imposed limitations,feeling trapped', 'liberation,new perspective,taking control', 'When reversed, the Eight of Swords indicates a release from mental blocks and a willingness to see things from a new perspective. It suggests taking control of your situation.', 'The Eight of Swords suggests feeling trapped or restricted by circumstances, often due to self-imposed limitations or negative thought patterns. It encourages looking beyond perceived constraints.', NULL, 'Minor'),
	(45, 'Nine of Swords', 'swords9', 9, 'anxiety,worry,sleeplessness,despair', 'hope,relief,releasing worry,acceptance', 'When reversed, the Nine of Swords indicates a release from fear and anxiety, or the realization that your worries are not as dire as they seem. It suggests finding hope and seeking support.', 'The Nine of Swords represents anxiety, fear, and sleepless nights. It suggests that worries and fears may be overwhelming you, urging you to address what is keeping you up at night.', NULL, 'Minor'),
	(46, 'Ten of Swords', 'swords10', 10, 'betrayal,painful ending,defeat,collapse', 'recovery,renewal,end of suffering,resilience', 'When reversed, the Ten of Swords indicates the beginning of recovery and the end of a difficult period. It suggests finding resilience and hope in the face of hardship.', 'The Ten of Swords symbolizes a painful ending or the feeling of being betrayed. It suggests that while this chapter may be ending in difficulty, a new dawn will rise.', NULL, 'Minor'),
	(47, 'Page of Swords', 'swords11', 11, 'curiosity,new ideas,communication,vigilance', 'gossip,miscommunication,hastiness,lack of planning', 'When reversed, the Page of Swords can indicate miscommunication, hasty decisions, or a tendency to spread gossip. It suggests the need to slow down and think before speaking.', 'The Page of Swords represents a keen mind, curiosity, and a readiness to explore new ideas. It suggests a time to be alert, communicate clearly, and stay open to learning.', NULL, 'Minor'),
	(48, 'Knight of Swords', 'swords12', 12, 'determination,action,ambition,drive', 'impulsiveness,recklessness,impatience,disregard for consequences', 'When reversed, the Knight of Swords indicates impulsiveness or a rush to take action without considering the consequences. It suggests the need to slow down and think things through.', 'The Knight of Swords is a symbol of action, speed, and determination. It suggests moving forward with ambition and decisiveness, but warns against being too hasty.', NULL, 'Minor'),
	(49, 'Queen of Swords', 'swords13', 13, 'perceptiveness,clear communication,independence,objectivity', 'coldness,criticism,overemotional,lack of empathy', 'When reversed, the Queen of Swords may become overly critical or detached, suggesting the need to soften your approach and balance logic with empathy.', 'The Queen of Swords embodies wisdom, clear communication, and an independent spirit. She values honesty and logic, encouraging you to seek the truth with a balanced mind.', NULL, 'Minor'),
	(50, 'King of Swords', 'swords14', 14, 'authority,intellect,truth,analytical thinking', 'manipulation,tyranny,rigidity,abuse of power', 'When reversed, the King of Swords may become rigid or misuse his intellect, suggesting a need to avoid manipulation and maintain ethical standards in decision-making.', 'The King of Swords represents authority, intellect, and the mastery of clear, analytical thinking. He suggests leading with logic and making decisions based on truth and reason.', NULL, 'Minor'),
	(51, 'Ace of Pentacles', 'pentacles1', 1, 'new beginnings,prosperity,abundance,opportunity', 'missed opportunities,financial loss,instability,lack of planning', 'When reversed, the Ace of Pentacles may indicate missed opportunities, financial setbacks, or a need to focus more carefully on planning for the future.', 'The Ace of Pentacles signifies the start of new opportunities related to prosperity, financial gain, or physical well-being. It suggests a time of potential growth and stability.', NULL, 'Minor'),
	(52, 'Two of Pentacles', 'pentacles2', 2, 'balance,adaptability,juggling,time management', 'overcommitment,imbalance,financial stress', 'When reversed, the Two of Pentacles can indicate feeling overwhelmed by responsibilities, struggling to maintain balance, or financial instability. It suggests the need to reassess priorities.', 'The Two of Pentacles represents the need to balance multiple priorities, adapt to changes, and manage your time and resources effectively. It suggests staying flexible and maintaining equilibrium.', NULL, 'Minor'),
	(53, 'Three of Pentacles', 'pentacles3', 3, 'collaboration,teamwork,skill development,craftsmanship', 'lack of teamwork,poor workmanship,miscommunication', 'When reversed, the Three of Pentacles may indicate issues with teamwork or communication, leading to delays or subpar results. It suggests focusing on improving cooperation and effort.', 'The Three of Pentacles signifies the importance of collaboration and working together to achieve a common goal. It highlights skill development and recognition for hard work.', NULL, 'Minor'),
	(54, 'Four of Pentacles', 'pentacles4', 4, 'security,control,conservatism,saving', 'greed,financial instability,letting go,overprotection', 'When reversed, the Four of Pentacles can indicate greed, financial instability, or a need to let go of excessive control over material matters. It suggests releasing rigid attachments.', 'The Four of Pentacles represents a desire for financial stability, security, and control over material resources. It suggests a time to save and protect what you have.', NULL, 'Minor'),
	(55, 'Five of Pentacles', 'pentacles5', 5, 'hardship,poverty,isolation,financial loss', 'recovery,hope,end of hardship,assistance', 'When reversed, the Five of Pentacles indicates recovery from hardship and the beginning of financial or emotional improvement. It suggests finding hope and support in challenging times.', 'The Five of Pentacles represents a time of financial hardship, loss, or feelings of isolation. It suggests a need to reach out for support and recognize that help is available.', NULL, 'Minor'),
	(56, 'Six of Pentacles', 'pentacles6', 6, 'generosity,charity,balance,sharing', 'selfishness,debt,inequality,strings attached', 'When reversed, the Six of Pentacles may indicate selfishness, imbalance in relationships, or conditions placed on giving. It suggests the need to evaluate fairness in exchanges.', 'The Six of Pentacles represents generosity, giving and receiving, and finding balance in sharing resources. It suggests a time of offering help or being open to receiving it.', NULL, 'Minor'),
	(57, 'Seven of Pentacles', 'pentacles7', 7, 'patience,investment,long-term planning,growth', 'impatience,lack of reward,poor planning,delays', 'When reversed, the Seven of Pentacles may indicate impatience with slow progress or feeling that efforts are not paying off. It suggests reassessing goals and adjusting your approach.', 'The Seven of Pentacles signifies the value of patience and long-term planning. It suggests a time to evaluate your progress and continue nurturing what you have planted for future growth.', NULL, 'Minor'),
	(58, 'Eight of Pentacles', 'pentacles8', 8, 'diligence,skill development,hard work,mastery', 'lack of focus,sloppiness,perfectionism,burnout', 'When reversed, the Eight of Pentacles may indicate a lack of focus or dissatisfaction with work. It suggests the need to balance diligence with rest and avoid becoming overly critical.', 'The Eight of Pentacles represents dedication to improving skills, craftsmanship, and hard work. It suggests a time of focused effort and the pursuit of mastery in a particular area.', NULL, 'Minor'),
	(59, 'Nine of Pentacles', 'pentacles9', 9, 'self-sufficiency,luxury,financial independence,gratitude', 'overindulgence,dependence,financial setbacks,lack of appreciation', 'When reversed, the Nine of Pentacles may indicate financial setbacks, dependence on others, or overindulgence. It suggests the need to reassess spending and focus on self-reliance.', 'The Nine of Pentacles represents self-sufficiency, enjoying the fruits of your labor, and a sense of independence. It suggests a time to appreciate the rewards of your hard work and live in comfort.', NULL, 'Minor'),
	(60, 'Ten of Pentacles', 'pentacles10', 10, 'legacy,wealth,family,long-term success', 'financial failure,family disputes,instability,short-term focus', 'When reversed, the Ten of Pentacles may indicate financial instability, family conflicts, or a lack of focus on the long-term. It suggests the need to address instability and plan for the future.', 'The Ten of Pentacles signifies lasting wealth, legacy, and family connections. It represents a time of security, prosperity, and enjoying the fruits of generational success.', NULL, 'Minor'),
	(61, 'Page of Pentacles', 'pentacles11', 11, 'ambition,learning,opportunity,practicality', 'procrastination,lack of progress,immaturity,short-sightedness', 'When reversed, the Page of Pentacles may indicate procrastination, a lack of focus, or failing to capitalize on opportunities. It suggests the need to be more diligent and focused.', 'The Page of Pentacles represents the beginning stages of a new opportunity, particularly in the realm of work, study, or financial ventures. It suggests a practical approach to achieving goals.', NULL, 'Minor'),
	(62, 'Knight of Pentacles', 'pentacles12', 12, 'hard work,routine,responsibility,commitment', 'stubbornness,laziness,lack of progress,inflexibility', 'When reversed, the Knight of Pentacles can indicate stagnation, stubbornness, or a reluctance to adapt. It suggests the need to be more open to new methods and avoid becoming too rigid.', 'The Knight of Pentacles represents dedication, reliability, and a steady approach to achieving long-term goals. It suggests focusing on consistency and the value of hard work.', NULL, 'Minor'),
	(63, 'Queen of Pentacles', 'pentacles13', 13, 'nurturing,practicality,comfort,financial security', 'self-care neglect,work-life imbalance,financial dependency', 'When reversed, the Queen of Pentacles may indicate neglecting self-care, overworking, or becoming too focused on material concerns. It suggests the need to find balance and prioritize personal well-being.', 'The Queen of Pentacles represents nurturing energy, practicality, and a strong focus on creating a comfortable and secure home environment. She embodies the ability to care for others while maintaining financial stability.', NULL, 'Minor'),
	(64, 'King of Pentacles', 'pentacles14', 14, 'abundance,security,leadership,prosperity', 'greed,stubbornness,materialism,poor management', 'When reversed, the King of Pentacles can indicate a focus on materialism, poor management of resources, or a tendency to be inflexible. It suggests the need to reassess priorities and focus on responsible leadership.', 'The King of Pentacles represents wealth, leadership, and the ability to create a stable and abundant life through hard work and discipline. He embodies financial success and a practical approach to building long-term security.', NULL, 'Minor'),
	(65, 'Ace of Wands', 'wands1', 1, 'inspiration,new opportunities,growth,potential', 'delays,lack of direction,missed opportunities,creative blocks', 'When reversed, the Ace of Wands may indicate delays, creative blocks, or a lack of direction. It suggests taking a moment to refocus and find your inner spark before moving forward.', 'The Ace of Wands represents the spark of inspiration and the beginning of new creative or spiritual ventures. It suggests a time of potential growth, urging you to seize the opportunity and move forward with enthusiasm.', NULL, 'Minor'),
	(66, 'Two of Wands', 'wands2', 2, 'planning,decision-making,future vision,contemplation', 'indecision,fear of change,lack of planning,restricted vision', 'When reversed, the Two of Wands can indicate hesitation or fear of change, causing a lack of progress. It suggests a need to overcome doubts and refine your plans.', 'The Two of Wands represents the process of planning for the future and making decisions that will shape your path. It suggests taking a broader view of your options and confidently stepping towards your vision.', NULL, 'Minor'),
	(67, 'Three of Wands', 'wands3', 3, 'expansion,foresight,progress,exploration', 'delays,obstacles,lack of progress,limited vision', 'When reversed, the Three of Wands may indicate delays or obstacles in your plans, suggesting a need to adjust your approach and maintain patience while waiting for results.', 'The Three of Wands signifies progress and the expansion of horizons. It suggests that your efforts are beginning to pay off and encourages you to keep looking ahead as you explore new opportunities.', NULL, 'Minor'),
	(68, 'Four of Wands', 'wands4', 4, 'celebration,community,stability,harmony', 'conflict,instability,lack of support,delayed celebrations', 'When reversed, the Four of Wands may indicate instability in relationships or community, or delays in celebrating milestones. It suggests a need to focus on creating harmony and support.', 'The Four of Wands represents celebration, harmony, and a sense of community. It suggests a time of coming together with loved ones to recognize achievements and enjoy a sense of stability and joy.', NULL, 'Minor'),
	(69, 'Five of Wands', 'wands5', 5, 'conflict,competition,tension,struggle', 'resolution,avoidance,compromise,harmony', 'When reversed, the Five of Wands indicates a desire to resolve conflicts or avoid confrontations. It suggests working towards compromise and finding a way to restore harmony.', 'The Five of Wands represents conflict, competition, and tension among individuals. It suggests a time of struggle, where differing opinions or goals may clash, requiring effort to find common ground.', NULL, 'Minor'),
	(70, 'Six of Wands', 'wands6', 6, 'victory,recognition,success,public acclaim', 'failure,ego,lack of recognition,fall from grace', 'When reversed, the Six of Wands can indicate a lack of recognition, feelings of failure, or letting pride cloud judgment. It suggests focusing on internal validation rather than seeking external approval.', 'The Six of Wands symbolizes victory, success, and public recognition for your efforts. It suggests that your hard work is being acknowledged, bringing a sense of pride and accomplishment.', NULL, 'Minor'),
	(71, 'Seven of Wands', 'wands7', 7, 'defense,perseverance,standing ground,challenge', 'overwhelmed,giving up,defeat,lack of courage', 'When reversed, the Seven of Wands may indicate feeling overwhelmed by challenges or struggling to maintain your stance. It suggests the need to reassess your approach and regain your confidence.', 'The Seven of Wands represents standing your ground and defending your position against challenges. It suggests the need for perseverance and courage in the face of opposition.', NULL, 'Minor'),
	(72, 'Eight of Wands', 'wands8', 8, 'swift action,movement,progress,communication', 'delays,stagnation,miscommunication,frustration', 'When reversed, the Eight of Wands may indicate delays, miscommunication, or a sense of frustration with slow progress. It suggests the need to be patient and address any obstacles.', 'The Eight of Wands signifies rapid progress, forward movement, and communication. It suggests that events are unfolding quickly, urging you to seize opportunities and act decisively.', NULL, 'Minor'),
	(73, 'Nine of Wands', 'wands9', 9, 'resilience,perseverance,courage,defensiveness', 'exhaustion,giving up,paranoia,burnout', 'When reversed, the Nine of Wands may indicate exhaustion or a feeling of wanting to give up. It suggests taking a step back to rest and reassess your approach before moving forward.', 'The Nine of Wands represents resilience, courage, and the determination to keep going despite challenges. It suggests that you have faced many battles, but you are near the finish line.', NULL, 'Minor'),
	(74, 'Ten of Wands', 'wands10', 10, 'burden,responsibility,hard work,stress', 'release,delegation,overwhelmed,letting go', 'When reversed, the Ten of Wands indicates a need to release some of your burdens or delegate tasks. It suggests that letting go can restore balance and prevent burnout.', 'The Ten of Wands symbolizes carrying heavy burdens or responsibilities. It suggests that while you have achieved much, the weight of your commitments may be taking a toll on your energy.', NULL, 'Minor'),
	(75, 'Page of Wands', 'wands11', 11, 'enthusiasm,exploration,curiosity,new ideas', 'lack of direction,impulsiveness,setbacks,disinterest', 'When reversed, the Page of Wands may indicate a lack of direction, impulsiveness, or feeling uninspired. It suggests the need to find your spark again and avoid rushing into decisions.', 'The Page of Wands represents enthusiasm, curiosity, and the desire to explore new ideas or adventures. It suggests embracing a fresh perspective and being open to new opportunities.', NULL, 'Minor'),
	(76, 'Knight of Wands', 'wands12', 12, 'passion,adventure,impulsiveness,action', 'recklessness,haste,delay,inconsistency', 'When reversed, the Knight of Wands can indicate recklessness, impulsiveness, or a lack of follow-through. It suggests the need to slow down and consider the consequences before acting.', 'The Knight of Wands represents a bold and adventurous spirit, eager to take action and pursue new opportunities. It suggests a time of high energy and the desire to follow your passions.', NULL, 'Minor'),
	(77, 'Queen of Wands', 'wands13', 13, 'confidence,determination,charisma,independence', 'insecurity,jealousy,self-doubt,introversion', 'When reversed, the Queen of Wands may indicate self-doubt, insecurity, or a tendency to become withdrawn. It suggests the need to reclaim your confidence and trust in yourself.', 'The Queen of Wands embodies confidence, charisma, and the ability to lead with warmth and determination. She suggests embracing your inner strength and taking pride in your abilities.', NULL, 'Minor'),
	(78, 'King of Wands', 'wands14', 14, 'leadership,vision,entrepreneurship,inspiration', 'impulsiveness,arrogance,domineering,lack of direction', 'When reversed, the King of Wands can indicate impulsiveness, arrogance, or a lack of direction. It suggests the need to balance enthusiasm with careful consideration of others.', 'The King of Wands represents visionary leadership, passion, and the drive to inspire others. He suggests taking charge with confidence, knowing that your vision can bring positive change.', NULL, 'Minor');


--
-- Data for Name: profiles; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: spreads; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: spread_placement_cards; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: hooks; Type: TABLE DATA; Schema: supabase_functions; Owner: supabase_functions_admin
--



--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 33, true);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- Name: cards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."cards_id_seq"', 78, true);


--
-- Name: profiles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."profiles_id_seq"', 33, true);


--
-- Name: spread_placement_cards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."spread_placement_cards_id_seq"', 1, false);


--
-- Name: spreads_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."spreads_id_seq"', 1, false);


--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--

SELECT pg_catalog.setval('"supabase_functions"."hooks_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
