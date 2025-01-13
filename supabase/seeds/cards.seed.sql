-- version 0.0.1

-- Seed for cards table and its columns

BEGIN;

CREATE TABLE Cards (
  card_id SERIAL PRIMARY KEY,          -- Unique identifier for the card
  slug_id VARCHAR(50) NOT NULL UNIQUE,
  name VARCHAR(255) NOT NULL,     -- Name of the card (e.g., "The Fool")
  arcana card_arcana NOT NULL,
  rank_int INT NOT NULL,    -- Major or Minor arcana
  upright_description TEXT,       -- Description of the card in the upright position
  reversed_description TEXT,      -- Description of the card in the reversed position
  upright_keywords TEXT,
  reversed_keywords TEXT,
  fools_journey TEXT,
)

INSERT INTO
  "public"."Cards" (
  
    "slug_id",
    "name",
    "arcana",
    "rank_int",
    "upright_keywords",
    "reversed_keywords",
    "upright_description",
    "reversed_description",
    "fools_journey",
  )
VALUES
  (
    'cups1',
    'Ace of Cups',
    'Minor',
    1,
    'new love,emotional awakening,compassion,creativity',
    'blocked emotions,repressed feelings,emptiness',
    'The Ace of Cups signifies a new beginning in emotional experiences. It represents the overflowing potential of love, compassion, and creativity, inviting you to open your heart.',
    'When reversed, the Ace of Cups suggests blocked or repressed emotions. It may indicate a need to release pent-up feelings and allow yourself to be vulnerable.',
    ''
  ),
  (
    'cups10',
    'Ten of Cups',
    'Minor',
    10,
    'happiness,emotional fulfillment,family,harmony',
    'domestic strife,broken relationships,unhappiness',
    'The Ten of Cups symbolizes emotional fulfillment, family harmony, and long-term happiness. It represents a sense of peace and contentment in relationships and personal life.',
    'When reversed, the Ten of Cups may indicate tension or discord in relationships or a feeling of disconnection from loved ones. It suggests addressing underlying issues to restore harmony.',
    ''
  ),
  (
    'cups11',
    'Page of Cups',
    'Minor',
    11,
    'creativity,curiosity,new feelings,imagination',
    'emotional immaturity,insecurity,creative block',
    'The Page of Cups represents youthful creativity, curiosity, and the stirrings of new emotional experiences. It encourages embracing imagination and exploring your feelings.',
    'When reversed, the Page of Cups can indicate emotional immaturity or a struggle to express feelings. It suggests the need to confront insecurities and develop emotional awareness.',
    ''
  ),
  (
    'cups12',
    'Knight of Cups',
    'Minor',
    12,
    'romantic,charm,idealism,following dreams',
    'moodiness,unrealistic expectations,emotional instability',
    'The Knight of Cups embodies romance, charm, and the pursuit of dreams. It suggests following your heart and seeking out beauty and love in the world around you.',
    'When reversed, the Knight of Cups may indicate moodiness or unrealistic expectations, particularly in relationships. It suggests the need to balance idealism with reality.',
    ''
  ),
  (
    'cups13',
    'Queen of Cups',
    'Minor',
    13,
    'compassion,empathy,intuitive insight,emotional balance',
    'emotional insecurity,dependence,overwhelm',
    'The Queen of Cups embodies compassion, empathy, and deep emotional understanding. She represents a nurturing presence that is in tune with her feelings and intuition.',
    'When reversed, the Queen of Cups may indicate emotional overwhelm or a tendency to become too dependent on others for emotional support. It suggests the need to establish healthy emotional boundaries.',
    ''
  ),
  (
    'cups14',
    'King of Cups',
    'Minor',
    14,
    'emotional maturity,balance,diplomacy,compassionate leadership',
    'manipulation,coldness,emotional instability',
    'The King of Cups represents emotional maturity, balance, and the ability to navigate complex feelings with compassion and strength. He encourages you to lead with empathy and wisdom.',
    'When reversed, the King of Cups can indicate emotional manipulation or instability, suggesting a need to reconnect with emotional integrity and compassion.',
    ''
  ),
  (
    'cups2',
    'Two of Cups',
    'Minor',
    2,
    'partnership,unity,attraction,mutual respect',
    'imbalance,miscommunication,disconnection',
    'The Two of Cups represents mutual attraction, partnership, and emotional connection. It signifies a harmonious bond between two people, built on trust and respect.',
    'When reversed, the Two of Cups may indicate a lack of harmony in relationships or misunderstandings. It suggests a need to work on communication and balance.',
    ''
  ),
  (
    'cups3',
    'Three of Cups',
    'Minor',
    3,
    'celebration,friendship,community,joy',
    'isolation,overindulgence,lack of support',
    'The Three of Cups signifies celebration, friendship, and coming together in joy. It highlights the importance of community and shared happiness.',
    'When reversed, the Three of Cups can indicate a sense of isolation or difficulties in connecting with others. It may suggest focusing on finding your social support system.',
    ''
  ),
  (
    'cups4',
    'Four of Cups',
    'Minor',
    4,
    'contemplation,apathy,reevaluation,discontent',
    'awareness,new outlook,acceptance',
    'The Four of Cups represents a time of introspection and contemplation. It suggests a focus on what is missing or dissatisfaction with the current situation.',
    'When reversed, the Four of Cups suggests a new awareness or a shift in perspective, allowing you to see new possibilities and move beyond dissatisfaction.',
    ''
  ),
  (
    'cups5',
    'Five of Cups',
    'Minor',
    5,
    'loss,regret,disappointment,grief',
    'acceptance,moving on,forgiveness',
    'The Five of Cups represents sorrow and focusing on what has been lost. It suggests feelings of regret and disappointment, but also reminds you to acknowledge what still remains.',
    'When reversed, the Five of Cups indicates a readiness to move beyond grief and begin the process of healing and forgiveness. It suggests a shift towards acceptance.',
    ''
  ),
  (
    'cups6',
    'Six of Cups',
    'Minor',
    6,
    'nostalgia,childhood memories,reunion,innocence',
    'living in the past,stuck in memories,moving forward',
    'The Six of Cups evokes memories of childhood and the past. It represents nostalgia and the innocence of simpler times, suggesting a joyful reunion or revisiting old connections.',
    'When reversed, the Six of Cups warns against dwelling too much on the past, suggesting the importance of letting go of old memories and embracing the present.',
    ''
  ),
  (
    'cups7',
    'Seven of Cups',
    'Minor',
    7,
    'choices,illusion,fantasy,daydreaming',
    'clarity,overcoming confusion,decisiveness',
    'The Seven of Cups represents the many possibilities and choices available, but also warns of illusions and fantasies. It suggests the need to distinguish between what is real and what is not.',
    'When reversed, the Seven of Cups indicates clarity and a focus on making concrete decisions. It suggests overcoming confusion and seeing things as they are.',
    ''
  ),
  (
    'cups8',
    'Eight of Cups',
    'Minor',
    8,
    'walking away,abandonment,seeking truth,letting go',
    'fear of change,avoidance,staying stuck',
    'The Eight of Cups signifies a need to leave behind something that no longer serves you, even if it is difficult. It represents a quest for deeper understanding and personal truth.',
    'When reversed, the Eight of Cups can indicate a fear of change or a reluctance to move on from a situation. It suggests the need to confront what is holding you back.',
    ''
  ),
  (
    'cups9',
    'Nine of Cups',
    'Minor',
    9,
    'contentment,satisfaction,gratitude,wish fulfillment',
    'dissatisfaction,greed,unfulfilled wishes',
    'The Nine of Cups represents personal satisfaction, contentment, and the fulfillment of wishes. It suggests a time to enjoy the fruits of your efforts and feel gratitude for what you have achieved.',
    'When reversed, the Nine of Cups may indicate dissatisfaction or a sense that something is missing despite outward success. It suggests reassessing your true desires.',
    ''
  ),
  (
    'major0',
    'The Fool',
    'Major',
    0,
    'new beginnings,adventure,spontaneity,innocence',
    'naivety,recklessness,unpreparedness',
    'The Fool card represents new beginnings, adventure, and a leap into the unknown. It encourages you to embrace change with a sense of curiosity and wonder.',
    'When reversed, The Fool warns against recklessness, suggesting you may be taking unnecessary risks without proper forethought. It encourages caution.',
    'Represents the beginning of the journey, emphasizing innocence and stepping into the unknown.'
  ),
  (
    'major1',
    'The Magician',
    'Major',
    1,
    'manifestation,power,resourcefulness,creativity',
    'manipulation,poor planning,untapped potential',
    'The Magician signifies manifestation, using your skills and talents to bring your desires into reality. It suggests you have all the resources you need.',
    'When reversed, The Magician can indicate a misuse of power or failing to take advantage of opportunities. It calls for greater self-awareness.',
    'Symbolizes taking control of ones own life
    and realizing personal power.'), (' major10 ', ' Wheel of Fortune ', ' Major ', ' 10 ', ' change,
    cycles,
    destiny,
    luck ', ' resistance to change,
    bad luck,
    lack of control ', ' The Wheel of Fortune signifies cycles of change
    and the turning points of life.It reminds you that life is in constant motion,
    bringing new opportunities.', '
    When reversed,
    the Wheel of Fortune can indicate resistance to change
    or feeling stuck in a cycle of bad luck.It suggests finding a way to adapt.', ' Represents the realization that life is ever - changing,
    with cycles of fortune
    and misfortune.'), (' major11 ', ' Justice ', ' Major ', ' 11 ', ' fairness,
    truth,
    balance,
    law ', ' injustice,
    dishonesty,
    lack of accountability ', ' Justice represents fairness,
    balance,
    and the consequences of actions.It calls for honesty
    and accountability in all decisions.', '
    When reversed,
    Justice warns of imbalance,
    dishonesty,
    or unfair treatment.It suggests a need to address issues of accountability.', ' Represents the need for fairness
    and understanding the balance between actions
    and their consequences.'), (' major12 ', ' The Hanged Man ', ' Major ', ' 12 ', ' suspension,
    letting
    go
,
      new perspective,
      surrender ', ' resistance,
      stalling,
      indecision ', ' The Hanged Man symbolizes a time of pause
      and reflection,
      encouraging you to see things
    from
      a different angle.It suggests letting
    go
      of control
      and allowing a new perspective to emerge.', '
      When reversed,
      The Hanged Man indicates resistance to change
      or a struggle with letting
    go
.It suggests you may be feeling stuck
      or unsure of your next step.', ' Represents the need to surrender control
      and see life
    from
      a different angle.'), (' major13 ', ' Death ', ' Major ', ' 13 ', ' transformation,
      endings,
      rebirth,
      change ', ' resistance to change,
      stagnation,
      fear of letting
    go
      ', ' The Death card signifies the
  end of a cycle
  and the beginning of a new one.It represents transformation
  and the release of what no longer serves you.', '
  When reversed,
  Death may suggest fear of change
  or an inability to let
go
.It encourages you to embrace transformation for growth.', ' Represents the inevitability of endings
  and the potential for transformation.'), (' major14 ', ' Temperance ', ' Major ', ' 14 ', ' balance,
  moderation,
  patience,
  harmony ', ' imbalance,
  excess,
  lack of patience ', ' Temperance symbolizes balance,
  moderation,
  and the blending of opposites.It encourages you to find harmony in your life
  and approach situations with patience.', '
  When reversed,
  Temperance may indicate a lack of balance
  or going to extremes.It suggests a need to reassess
  and find equilibrium.', ' Represents the lesson of finding balance
  and learning to integrate opposing aspects.'), (' major15 ', ' The Devil ', ' Major ', ' 15 ', ' bondage,
  materialism,
  addiction,
  temptation ', ' freedom,
  release,
  overcoming,
  awareness ', ' The Devil represents the chains of addiction,
  materialism,
  and temptation.It suggests being trapped by desires
  or negative patterns,
  urging you to face what holds you back.', '
  When reversed,
  The Devil indicates a breaking of bonds
  and liberation
from
  negative influences.It suggests an opportunity for self - awareness
  and freedom.', ' Represents the encounter with ones inner demons and the struggle between desire and liberation.'
),
(
  'major16',
  'The Tower',
  'Major',
  16,
  'upheaval,sudden change,revelation,chaos',
  'resistance to change,fear of disaster,averted crisis',
  'The Tower signifies sudden upheaval and the breaking down of old structures. It represents a moment of revelation that forces you to confront the truth and start anew.',
  'When reversed, The Tower suggests an aversion to change or an attempt to avoid an inevitable crisis. It may indicate the need to accept transformation, even if it is challenging.',
  'Represents the collapse of illusions and the upheaval that brings new understanding.'
),
(
  'major17',
  'The Star',
  'Major',
  17,
  'hope,inspiration,renewal,serenity',
  'despair,lack of faith,disconnection',
  'The Star brings a message of hope, inspiration, and a sense of peace after the storm. It encourages you to trust in the future and follow your inner guiding light.',
  'When reversed, The Star can indicate a loss of hope or disconnection from your inner self. It suggests a need to reconnect with your faith and find your direction.',
  'Represents the light of hope and inspiration after facing darkness and challenges.'
),
(
  'major18',
  'The Moon',
  'Major',
  18,
  'illusion,intuition,unconscious,mystery',
  'clarity,confusion,fear',
  'The Moon symbolizes the world of dreams, intuition, and the unconscious. It suggests a time of uncertainty and invites you to explore your inner world and hidden emotions.',
  'When reversed, The Moon can represent a release from illusion or a struggle with confusion and fear. It calls for clarity and understanding of your inner self.',
  'Represents the journey through the shadows of the mind and confronting illusions.'
),
(
  'major19',
  'The Sun',
  'Major',
  19,
  'joy,success,vitality,positivity',
  'temporary setbacks,lack of enthusiasm,clouded joy',
  'The Sun represents joy, success, and positivity. It signifies a time of abundance, vitality, and clarity, where everything becomes illuminated with a warm and optimistic light.',
  'When reversed, The Sun may indicate a period of temporary setbacks or a lack of enthusiasm. It suggests finding ways to reconnect with your inner joy and positivity.',
  'Represents the realization of true happiness and the celebration of life’s blessings.'
),
(
  'major2',
  'The High Priestess',
  'Major',
  2,
  'intuition,subconscious,mystery,inner wisdom',
  'secrets,withdrawal,repressed intuition',
  'The High Priestess invites you to connect with your intuition and seek answers within. It represents mystery and the unknown.',
  'When reversed, The High Priestess warns of secrets kept from you or a disconnection from your intuition. It encourages you to pay attention to your inner voice.',
  'Represents the encounter with the mysteries of life and the need for introspection.'
),
(
  'major20',
  'Judgement',
  'Major',
  20,
  'rebirth,inner calling,awakening,reflection',
  'self-doubt,denial,failure to learn,lack of reflection',
  'Judgement represents rebirth, self-evaluation, and a spiritual awakening. It calls you to reflect on your past actions and decisions, offering a chance for renewal and transformation.',
  'When reversed, Judgement can indicate self-doubt or an unwillingness to face past mistakes. It suggests a need for self-forgiveness and a readiness to embrace new opportunities.',
  'Represents the process of self-assessment and understanding ones place in the larger cosmic order.'), (' major21 ', ' The World ', ' Major ', ' 21 ', ' completion,
  fulfillment,
  wholeness,
  achievement ', ' incompletion,
  stagnation,
  lack of closure,
  delayed success ', ' The World represents the culmination of a journey
  and the achievement of goals.It symbolizes wholeness,
  fulfillment,
  and the realization of ones purpose.',
  'When reversed, The World can suggest unfinished business or a feeling of incompletion. It encourages you to tie up loose ends and seek closure before moving forward.',
  'Represents the end of the journey and the realization of unity with the world and self.'
),
(
  'major3',
  'The Empress',
  'Major',
  3,
  'abundance,nurturing,fertility,beauty',
  'dependence,creative block,neglect',
  'The Empress embodies fertility, nurturing energy, and a deep connection to nature. She symbolizes abundance in all forms and encourages creativity.',
  'When reversed, The Empress suggests a lack of self-care or an overreliance on others. It may indicate creative stagnation or a need for self-nurturing.',
  'Represents the encounter with the nurturing aspects of life, offering growth and creativity.'
),
(
  'major4',
  'The Emperor',
  'Major',
  4,
  'authority,structure,control,discipline',
  'tyranny,rigidity,lack of discipline',
  'The Emperor symbolizes authority, structure, and the power of leadership. It encourages taking control of your situation with discipline and determination.',
  'When reversed, The Emperor can indicate misuse of authority or excessive control. It suggests a need to balance rigidity with flexibility.',
  'Represents the encounter with authority and the need to establish order in life.'
),
(
  'major5',
  'The Hierophant',
  'Major',
  5,
  'tradition,spirituality,conformity,education',
  'rebellion,restriction,challenge to tradition',
  'The Hierophant represents tradition, spiritual wisdom, and the pursuit of knowledge. It emphasizes learning from established institutions and spiritual guidance.',
  'When reversed, The Hierophant suggests a resistance to traditional values or a challenge to societal norms. It encourages you to find your own path.',
  'Represents the encounter with tradition and the guidance of mentors or teachers.'
),
(
  'major6',
  'The Lovers',
  'Major',
  6,
  'love,partnership,choices,harmony',
  'disharmony,imbalance,misalignment',
  'The Lovers card signifies deep bonds, meaningful connections, and choices in relationships. It encourages you to align with what feels true to your heart.',
  'When reversed, The Lovers may indicate conflict in relationships or inner disharmony. It suggests a need to reassess your values and connections.',
  'Represents the encounter with love and the power of choices that shape ones path.'), (' major7 ', ' The Chariot ', ' Major ', ' 7 ', ' determination,
  victory,
  willpower,
  control ', ' lack of direction,
  self - doubt,
  losing control ', ' The Chariot represents determination,
  focused effort,
  and the triumph that comes
  from
    maintaining control over conflicting forces.It encourages moving forward with confidence.', '
    When reversed,
    The Chariot may signal a loss of direction
    or lack of control.It suggests the need to regain focus
    and harness your inner strength.', ' Represents the triumph of willpower
    and the ability to control ones destiny.'
),
(
  'major8',
  'Strength',
  'Major',
  8,
  'courage,inner strength,compassion,patience',
  'self-doubt,weakness,insecurity',
  'Strength symbolizes inner power and the gentle control of ones impulses.It encourages you to face challenges with compassion
  and self - confidence.', '
  When reversed,
  Strength can indicate self - doubt
  or an inability to manage ones emotions. It calls for patience and self-acceptance.',
  'Represents the encounter with inner strength and the lesson of mastering ones emotions.'), (' major9 ', ' The Hermit ', ' Major ', ' 9 ', ' introspection,
  soul - searching,
  solitude,
  inner guidance ', ' isolation,
  withdrawal,
  loneliness ', ' The Hermit invites you to take a step back
  and reflect.It represents a time of introspection
  and seeking inner wisdom,
  away
  from
    external distractions.', '
    When reversed,
    The Hermit warns of excessive isolation
    or avoidance of personal truths.It encourages finding balance between solitude
    and connection.', ' Represents the period of soul - searching
    and finding ones own truth.'
),
(
  'pentacles1',
  'Ace of Pentacles',
  'Minor',
  1,
  'new beginnings,prosperity,abundance,opportunity',
  'missed opportunities,financial loss,instability,lack of planning',
  'The Ace of Pentacles signifies the start of new opportunities related to prosperity, financial gain, or physical well-being. It suggests a time of potential growth and stability.',
  'When reversed, the Ace of Pentacles may indicate missed opportunities, financial setbacks, or a need to focus more carefully on planning for the future.',
  ''
),
(
  'pentacles10',
  'Ten of Pentacles',
  'Minor',
  10,
  'legacy,wealth,family,long-term success',
  'financial failure,family disputes,instability,short-term focus',
  'The Ten of Pentacles signifies lasting wealth, legacy, and family connections. It represents a time of security, prosperity, and enjoying the fruits of generational success.',
  'When reversed, the Ten of Pentacles may indicate financial instability, family conflicts, or a lack of focus on the long-term. It suggests the need to address instability and plan for the future.',
  ''
),
(
  'pentacles11',
  'Page of Pentacles',
  'Minor',
  11,
  'ambition,learning,opportunity,practicality',
  'procrastination,lack of progress,immaturity,short-sightedness',
  'The Page of Pentacles represents the beginning stages of a new opportunity, particularly in the realm of work, study, or financial ventures. It suggests a practical approach to achieving goals.',
  'When reversed, the Page of Pentacles may indicate procrastination, a lack of focus, or failing to capitalize on opportunities. It suggests the need to be more diligent and focused.',
  ''
),
(
  'pentacles12',
  'Knight of Pentacles',
  'Minor',
  12,
  'hard work,routine,responsibility,commitment',
  'stubbornness,laziness,lack of progress,inflexibility',
  'The Knight of Pentacles represents dedication, reliability, and a steady approach to achieving long-term goals. It suggests focusing on consistency and the value of hard work.',
  'When reversed, the Knight of Pentacles can indicate stagnation, stubbornness, or a reluctance to adapt. It suggests the need to be more open to new methods and avoid becoming too rigid.',
  ''
),
(
  'pentacles13',
  'Queen of Pentacles',
  'Minor',
  13,
  'nurturing,practicality,comfort,financial security',
  'self-care neglect,work-life imbalance,financial dependency',
  'The Queen of Pentacles represents nurturing energy, practicality, and a strong focus on creating a comfortable and secure home environment. She embodies the ability to care for others while maintaining financial stability.',
  'When reversed, the Queen of Pentacles may indicate neglecting self-care, overworking, or becoming too focused on material concerns. It suggests the need to find balance and prioritize personal well-being.',
  ''
),
(
  'pentacles14',
  'King of Pentacles',
  'Minor',
  14,
  'abundance,security,leadership,prosperity',
  'greed,stubbornness,materialism,poor management',
  'The King of Pentacles represents wealth, leadership, and the ability to create a stable and abundant life through hard work and discipline. He embodies financial success and a practical approach to building long-term security.',
  'When reversed, the King of Pentacles can indicate a focus on materialism, poor management of resources, or a tendency to be inflexible. It suggests the need to reassess priorities and focus on responsible leadership.',
  ''
),
(
  'pentacles2',
  'Two of Pentacles',
  'Minor',
  2,
  'balance,adaptability,juggling,time management',
  'overcommitment,imbalance,financial stress',
  'The Two of Pentacles represents the need to balance multiple priorities, adapt to changes, and manage your time and resources effectively. It suggests staying flexible and maintaining equilibrium.',
  'When reversed, the Two of Pentacles can indicate feeling overwhelmed by responsibilities, struggling to maintain balance, or financial instability. It suggests the need to reassess priorities.',
  ''
),
(
  'pentacles3',
  'Three of Pentacles',
  'Minor',
  3,
  'collaboration,teamwork,skill development,craftsmanship',
  'lack of teamwork,poor workmanship,miscommunication',
  'The Three of Pentacles signifies the importance of collaboration and working together to achieve a common goal. It highlights skill development and recognition for hard work.',
  'When reversed, the Three of Pentacles may indicate issues with teamwork or communication, leading to delays or subpar results. It suggests focusing on improving cooperation and effort.',
  ''
),
(
  'pentacles4',
  'Four of Pentacles',
  'Minor',
  4,
  'security,control,conservatism,saving',
  'greed,financial instability,letting go,overprotection',
  'The Four of Pentacles represents a desire for financial stability, security, and control over material resources. It suggests a time to save and protect what you have.',
  'When reversed, the Four of Pentacles can indicate greed, financial instability, or a need to let go of excessive control over material matters. It suggests releasing rigid attachments.',
  ''
),
(
  'pentacles5',
  'Five of Pentacles',
  'Minor',
  5,
  'hardship,poverty,isolation,financial loss',
  'recovery,hope,end of hardship,assistance',
  'The Five of Pentacles represents a time of financial hardship, loss, or feelings of isolation. It suggests a need to reach out for support and recognize that help is available.',
  'When reversed, the Five of Pentacles indicates recovery from hardship and the beginning of financial or emotional improvement. It suggests finding hope and support in challenging times.',
  ''
),
(
  'pentacles6',
  'Six of Pentacles',
  'Minor',
  6,
  'generosity,charity,balance,sharing',
  'selfishness,debt,inequality,strings attached',
  'The Six of Pentacles represents generosity, giving and receiving, and finding balance in sharing resources. It suggests a time of offering help or being open to receiving it.',
  'When reversed, the Six of Pentacles may indicate selfishness, imbalance in relationships, or conditions placed on giving. It suggests the need to evaluate fairness in exchanges.',
  ''
),
(
  'pentacles7',
  'Seven of Pentacles',
  'Minor',
  7,
  'patience,investment,long-term planning,growth',
  'impatience,lack of reward,poor planning,delays',
  'The Seven of Pentacles signifies the value of patience and long-term planning. It suggests a time to evaluate your progress and continue nurturing what you have planted for future growth.',
  'When reversed, the Seven of Pentacles may indicate impatience with slow progress or feeling that efforts are not paying off. It suggests reassessing goals and adjusting your approach.',
  ''
),
(
  'pentacles8',
  'Eight of Pentacles',
  'Minor',
  8,
  'diligence,skill development,hard work,mastery',
  'lack of focus,sloppiness,perfectionism,burnout',
  'The Eight of Pentacles represents dedication to improving skills, craftsmanship, and hard work. It suggests a time of focused effort and the pursuit of mastery in a particular area.',
  'When reversed, the Eight of Pentacles may indicate a lack of focus or dissatisfaction with work. It suggests the need to balance diligence with rest and avoid becoming overly critical.',
  ''
),
(
  'pentacles9',
  'Nine of Pentacles',
  'Minor',
  9,
  'self-sufficiency,luxury,financial independence,gratitude',
  'overindulgence,dependence,financial setbacks,lack of appreciation',
  'The Nine of Pentacles represents self-sufficiency, enjoying the fruits of your labor, and a sense of independence. It suggests a time to appreciate the rewards of your hard work and live in comfort.',
  'When reversed, the Nine of Pentacles may indicate financial setbacks, dependence on others, or overindulgence. It suggests the need to reassess spending and focus on self-reliance.',
  ''
),
(
  'swords1',
  'Ace of Swords',
  'Minor',
  1,
  'clarity,breakthrough,new ideas,mental clarity',
  'confusion,chaos,miscommunication,lack of insight',
  'The Ace of Swords symbolizes a new beginning marked by mental clarity and a breakthrough in understanding. It represents the power of a fresh perspective and the potential to cut through confusion.',
  'When reversed, the Ace of Swords suggests confusion, misunderstandings, or difficulty in seeing the truth. It may indicate a need to clear away mental clutter and focus on finding clarity.',
  ''
),
(
  'swords10',
  'Ten of Swords',
  'Minor',
  10,
  'betrayal,painful ending,defeat,collapse',
  'recovery,renewal,end of suffering,resilience',
  'The Ten of Swords symbolizes a painful ending or the feeling of being betrayed. It suggests that while this chapter may be ending in difficulty, a new dawn will rise.',
  'When reversed, the Ten of Swords indicates the beginning of recovery and the end of a difficult period. It suggests finding resilience and hope in the face of hardship.',
  ''
),
(
  'swords11',
  'Page of Swords',
  'Minor',
  11,
  'curiosity,new ideas,communication,vigilance',
  'gossip,miscommunication,hastiness,lack of planning',
  'The Page of Swords represents a keen mind, curiosity, and a readiness to explore new ideas. It suggests a time to be alert, communicate clearly, and stay open to learning.',
  'When reversed, the Page of Swords can indicate miscommunication, hasty decisions, or a tendency to spread gossip. It suggests the need to slow down and think before speaking.',
  ''
),
(
  'swords12',
  'Knight of Swords',
  'Minor',
  12,
  'determination,action,ambition,drive',
  'impulsiveness,recklessness,impatience,disregard for consequences',
  'The Knight of Swords is a symbol of action, speed, and determination. It suggests moving forward with ambition and decisiveness, but warns against being too hasty.',
  'When reversed, the Knight of Swords indicates impulsiveness or a rush to take action without considering the consequences. It suggests the need to slow down and think things through.',
  ''
),
(
  'swords13',
  'Queen of Swords',
  'Minor',
  13,
  'perceptiveness,clear communication,independence,objectivity',
  'coldness,criticism,overemotional,lack of empathy',
  'The Queen of Swords embodies wisdom, clear communication, and an independent spirit. She values honesty and logic, encouraging you to seek the truth with a balanced mind.',
  'When reversed, the Queen of Swords may become overly critical or detached, suggesting the need to soften your approach and balance logic with empathy.',
  ''
),
(
  'swords14',
  'King of Swords',
  'Minor',
  14,
  'authority,intellect,truth,analytical thinking',
  'manipulation,tyranny,rigidity,abuse of power',
  'The King of Swords represents authority, intellect, and the mastery of clear, analytical thinking. He suggests leading with logic and making decisions based on truth and reason.',
  'When reversed, the King of Swords may become rigid or misuse his intellect, suggesting a need to avoid manipulation and maintain ethical standards in decision-making.',
  ''
),
(
  'swords2',
  'Two of Swords',
  'Minor',
  2,
  'indecision,stalemate,compromise,difficult choices',
  'confusion,overwhelm,indecisiveness',
  'The Two of Swords represents a need to make a difficult decision, often involving a compromise or balance between two opposing options. It suggests a time of reflection and seeking inner guidance.',
  'When reversed, the Two of Swords may indicate feeling overwhelmed by choices or an inability to make a decision. It suggests the need to confront the issue directly rather than avoid it.',
  ''
),
(
  'swords3',
  'Three of Swords',
  'Minor',
  3,
  'heartbreak,pain,sorrow,betrayal',
  'healing,forgiveness,recovery',
  'The Three of Swords represents deep emotional pain, often related to heartbreak or betrayal. It suggests the need to confront and process these feelings to move forward.',
  'When reversed, the Three of Swords suggests the beginning of healing and recovery from past wounds. It encourages forgiveness and letting go of lingering pain.',
  ''
),
(
  'swords4',
  'Four of Swords',
  'Minor',
  4,
  'rest,recuperation,meditation,solitude',
  'restlessness,burnout,lack of progress',
  'The Four of Swords signifies a time for rest, retreat, and recovery. It encourages taking a break to recharge your mind and body before moving forward.',
  'When reversed, the Four of Swords suggests restlessness or an inability to find peace. It may indicate the need to slow down before burnout occurs.',
  ''
),
(
  'swords5',
  'Five of Swords',
  'Minor',
  5,
  'conflict,defeat,disagreement,dishonor',
  'reconciliation,regret,compromise,forgiveness',
  'The Five of Swords represents conflict, tension, and the cost of winning at any price. It suggests the need to consider whether a victory is worth the damage caused.',
  'When reversed, the Five of Swords can indicate the desire to move past conflict, make amends, or regret over harsh actions. It suggests a time for reconciliation and healing.',
  ''
),
(
  'swords6',
  'Six of Swords',
  'Minor',
  6,
  'transition,moving on,recovery,journey',
  'resistance to change,unfinished business,lingering difficulties',
  'The Six of Swords signifies a journey of recovery, leaving behind difficulties, and moving towards a calmer, more peaceful state. It suggests progress through transition.',
  'When reversed, the Six of Swords can indicate resistance to change or being stuck in the past. It suggests the need to fully let go before moving forward.',
  ''
),
(
  'swords7',
  'Seven of Swords',
  'Minor',
  7,
  'deception,strategy,betrayal,trickery',
  'confession,conscience,getting caught',
  'The Seven of Swords represents deception, cunning, and strategic thinking. It suggests the need to use wit and tact in dealing with complex situations, but also warns of dishonesty.',
  'When reversed, the Seven of Swords can indicate a guilty conscience, a desire to come clean, or the exposure of secrets. It suggests the importance of honesty and integrity.',
  ''
),
(
  'swords8',
  'Eight of Swords',
  'Minor',
  8,
  'restriction,helplessness,self-imposed limitations,feeling trapped',
  'liberation,new perspective,taking control',
  'The Eight of Swords suggests feeling trapped or restricted by circumstances, often due to self-imposed limitations or negative thought patterns. It encourages looking beyond perceived constraints.',
  'When reversed, the Eight of Swords indicates a release from mental blocks and a willingness to see things from a new perspective. It suggests taking control of your situation.',
  ''
),
(
  'swords9',
  'Nine of Swords',
  'Minor',
  9,
  'anxiety,worry,sleeplessness,despair',
  'hope,relief,releasing worry,acceptance',
  'The Nine of Swords represents anxiety, fear, and sleepless nights. It suggests that worries and fears may be overwhelming you, urging you to address what is keeping you up at night.',
  'When reversed, the Nine of Swords indicates a release from fear and anxiety, or the realization that your worries are not as dire as they seem. It suggests finding hope and seeking support.',
  ''
),
(
  'wands1',
  'Ace of Wands',
  'Minor',
  1,
  'inspiration,new opportunities,growth,potential',
  'delays,lack of direction,missed opportunities,creative blocks',
  'The Ace of Wands represents the spark of inspiration and the beginning of new creative or spiritual ventures. It suggests a time of potential growth, urging you to seize the opportunity and move forward with enthusiasm.',
  'When reversed, the Ace of Wands may indicate delays, creative blocks, or a lack of direction. It suggests taking a moment to refocus and find your inner spark before moving forward.',
  ''
),
(
  'wands10',
  'Ten of Wands',
  'Minor',
  10,
  'burden,responsibility,hard work,stress',
  'release,delegation,overwhelmed,letting go',
  'The Ten of Wands symbolizes carrying heavy burdens or responsibilities. It suggests that while you have achieved much, the weight of your commitments may be taking a toll on your energy.',
  'When reversed, the Ten of Wands indicates a need to release some of your burdens or delegate tasks. It suggests that letting go can restore balance and prevent burnout.',
  ''
),
(
  'wands11',
  'Page of Wands',
  'Minor',
  11,
  'enthusiasm,exploration,curiosity,new ideas',
  'lack of direction,impulsiveness,setbacks,disinterest',
  'The Page of Wands represents enthusiasm, curiosity, and the desire to explore new ideas or adventures. It suggests embracing a fresh perspective and being open to new opportunities.',
  'When reversed, the Page of Wands may indicate a lack of direction, impulsiveness, or feeling uninspired. It suggests the need to find your spark again and avoid rushing into decisions.',
  ''
),
(
  'wands12',
  'Knight of Wands',
  'Minor',
  12,
  'passion,adventure,impulsiveness,action',
  'recklessness,haste,delay,inconsistency',
  'The Knight of Wands represents a bold and adventurous spirit, eager to take action and pursue new opportunities. It suggests a time of high energy and the desire to follow your passions.',
  'When reversed, the Knight of Wands can indicate recklessness, impulsiveness, or a lack of follow-through. It suggests the need to slow down and consider the consequences before acting.',
  ''
),
(
  'wands13',
  'Queen of Wands',
  'Minor',
  13,
  'confidence,determination,charisma,independence',
  'insecurity,jealousy,self-doubt,introversion',
  'The Queen of Wands embodies confidence, charisma, and the ability to lead with warmth and determination. She suggests embracing your inner strength and taking pride in your abilities.',
  'When reversed, the Queen of Wands may indicate self-doubt, insecurity, or a tendency to become withdrawn. It suggests the need to reclaim your confidence and trust in yourself.',
  ''
),
(
  'wands14',
  'King of Wands',
  'Minor',
  14,
  'leadership,vision,entrepreneurship,inspiration',
  'impulsiveness,arrogance,domineering,lack of direction',
  'The King of Wands represents visionary leadership, passion, and the drive to inspire others. He suggests taking charge with confidence, knowing that your vision can bring positive change.',
  'When reversed, the King of Wands can indicate impulsiveness, arrogance, or a lack of direction. It suggests the need to balance enthusiasm with careful consideration of others.',
  ''
),
(
  'wands2',
  'Two of Wands',
  'Minor',
  2,
  'planning,decision-making,future vision,contemplation',
  'indecision,fear of change,lack of planning,restricted vision',
  'The Two of Wands represents the process of planning for the future and making decisions that will shape your path. It suggests taking a broader view of your options and confidently stepping towards your vision.',
  'When reversed, the Two of Wands can indicate hesitation or fear of change, causing a lack of progress. It suggests a need to overcome doubts and refine your plans.',
  ''
),
(
  'wands3',
  'Three of Wands',
  'Minor',
  3,
  'expansion,foresight,progress,exploration',
  'delays,obstacles,lack of progress,limited vision',
  'The Three of Wands signifies progress and the expansion of horizons. It suggests that your efforts are beginning to pay off and encourages you to keep looking ahead as you explore new opportunities.',
  'When reversed, the Three of Wands may indicate delays or obstacles in your plans, suggesting a need to adjust your approach and maintain patience while waiting for results.',
  ''
),
(
  'wands4',
  'Four of Wands',
  'Minor',
  4,
  'celebration,community,stability,harmony',
  'conflict,instability,lack of support,delayed celebrations',
  'The Four of Wands represents celebration, harmony, and a sense of community. It suggests a time of coming together with loved ones to recognize achievements and enjoy a sense of stability and joy.',
  'When reversed, the Four of Wands may indicate instability in relationships or community, or delays in celebrating milestones. It suggests a need to focus on creating harmony and support.',
  ''
),
(
  'wands5',
  'Five of Wands',
  'Minor',
  5,
  'conflict,competition,tension,struggle',
  'resolution,avoidance,compromise,harmony',
  'The Five of Wands represents conflict, competition, and tension among individuals. It suggests a time of struggle, where differing opinions or goals may clash, requiring effort to find common ground.',
  'When reversed, the Five of Wands indicates a desire to resolve conflicts or avoid confrontations. It suggests working towards compromise and finding a way to restore harmony.',
  ''
),
(
  'wands6',
  'Six of Wands',
  'Minor',
  6,
  'victory,recognition,success,public acclaim',
  'failure,ego,lack of recognition,fall from grace',
  'The Six of Wands symbolizes victory, success, and public recognition for your efforts. It suggests that your hard work is being acknowledged, bringing a sense of pride and accomplishment.',
  'When reversed, the Six of Wands can indicate a lack of recognition, feelings of failure, or letting pride cloud judgment. It suggests focusing on internal validation rather than seeking external approval.',
  ''
),
(
  'wands7',
  'Seven of Wands',
  'Minor',
  7,
  'defense,perseverance,standing ground,challenge',
  'overwhelmed,giving up,defeat,lack of courage',
  'The Seven of Wands represents standing your ground and defending your position against challenges. It suggests the need for perseverance and courage in the face of opposition.',
  'When reversed, the Seven of Wands may indicate feeling overwhelmed by challenges or struggling to maintain your stance. It suggests the need to reassess your approach and regain your confidence.',
  ''
),
(
  'wands8',
  'Eight of Wands',
  'Minor',
  8,
  'swift action,movement,progress,communication',
  'delays,stagnation,miscommunication,frustration',
  'The Eight of Wands signifies rapid progress, forward movement, and communication. It suggests that events are unfolding quickly, urging you to seize opportunities and act decisively.',
  'When reversed, the Eight of Wands may indicate delays, miscommunication, or a sense of frustration with slow progress. It suggests the need to be patient and address any obstacles.',
  ''
),
(
  'wands9',
  'Nine of Wands',
  'Minor',
  9,
  'resilience,perseverance,courage,defensiveness',
  'exhaustion,giving up,paranoia,burnout',
  'The Nine of Wands represents resilience, courage, and the determination to keep going despite challenges. It suggests that you have faced many battles, but you are near the finish line.',
  'When reversed, the Nine of Wands may indicate exhaustion or a feeling of wanting to give up. It suggests taking a step back to rest and reassess your approach before moving forward.',
  ''
);

COMMIT;