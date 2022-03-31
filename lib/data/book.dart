import 'package:nelsus/data/enums.dart';

class Book {
  int id;
  String title;
  String coverLink;
  String content;
  int rating;
  String author;
  String datePublished;
  String uploadDate;
  String edition;
  String abstract;
  int pages;
  bool owned;
  NelsusContentType contentType;

  Book({
    required this.id,
    required this.title,
    required this.coverLink,
    this.content =
        "Trauma is a pervasive human experience, yet trauma-informed care (TIC) is a skill that is underutilized in health care organizations. Traumatic events are those associated with actual or threatened risk of serious injury, death, or sexual violence that are experienced directly, indirectly (by witnessing them), or vicariously (through the experiences of a close friend or loved one). Such events affect people of all ages, ethnicities, religions, vocations, socioeconomic backgrounds, sexual orientations, and gender identities throughout the world when there is war, disaster, social upheaval, family dysfunction, adverse childhood events, or chaos.\nResponses to traumatic events vary widely, as they are influenced by a person's socio-cultural history, a person's interpretation of the events, the meaning a person ascribes to the events, and the associated physical and psychological effects of the events. Although the stress that follows traumatic events affects each person differently, it often produces lasting emotional, mental, physical, social, or spiritual upheaval, altering the person's ability to function Over the past 20 years, biomedical research has shown that a wide range of chronic diseases, poor mental health outcomes, early deaths, and transgenerational epigenetic changes have been associated with stress stemming from traumatic events that may have occurred years or even generations earlier.\nPotential forms of enduring traumatic stress include the following: chronic stress, which occurs when continuous trauma persists over an extended period toxic stress, which Harvard University's Center on the Developing Child describes as potentially occurring in children who experience “strong, frequent, and/or prolonged adversity—such as physical or emotional abuse, chronic neglect, caregiver substance abuse or mental illness, exposure to violence, and/or the accumulated burdens of family economic hardship—without adequate adult support” stress associated with complex trauma, which the National Child Traumatic Stress Network says occurs when a child is exposed to “multiple traumatic events—often of an invasive, interpersonal nature,” such as sexual or physical abuse, domestic violence, or profound neglect, which often produce wide-ranging, long-term effects trauma coercive bonding, which results when fear is overwhelming and there is no opportunity to escape, as occurs with domestic violence and human trafficking\nAny form of traumatic stress can affect a person's neurologic, immunologic, endocrinologic, autonomic, inflammatory, and metabolic processes,14 though the effects vary depending on the stage of brain development at which the trauma occurs. The neurochemical response to traumatic stress includes a rise in the levels of cortisol and norepinephrine, which in conjunction with neuroendocrine, autonomic, immune, and metabolic mediators can produce lasting changes in the amygdala, hippocampus, and prefrontal cortex, thereby affecting brain function, including neuropsychological aspects of memory.\nThe stress of repeated trauma creates a cascade of hormones that can result in a phenomenon known as allostatic load, in which normally adaptive processes for mediating stress are distorted such that they exacerbate pathophysiologic changes. Risk factors for allostatic load include advanced age, low socioeconomic status, and being single.",
    this.owned = false,
    this.rating = 0,
    this.author = '',
    this.datePublished = '',
    this.uploadDate = '',
    this.edition = '',
    this.abstract = '',
    this.pages = 0,
    this.contentType = NelsusContentType.Text,
  });
}
