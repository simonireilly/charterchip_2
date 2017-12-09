module EvidencesHelper

  def competency_review_helper
    evidence = current_user.evidences.all
    data = {}

    evidence.each do |evidence|
      if data[evidence.competency].nil?
        data[evidence.competency] = evidence.level
      else
        data[evidence.competency] = data[evidence.competency] <= evidence.level ? evidence.level : data[evidence.competency]
      end
    end

    competency_list_helper.each do |key|
      if data[key].nil?
        data[key]=0
      end
    end

    data.sort
  end

  def competency_list_helper
    [
      'Ai',
      'Aii',
      'Aiii',
      'Aiv',
      'Av',
      'Bi',
      'Bii',
      'Biii',
      'Ci ',
      'Cii ',
      'Ciii ',
      'Di ',
      'Dii ',
      'Ei ',
      'Eii'
    ]
  end

  def evidence_image_helper(evidence)
    "https://picsum.photos/300/150?image=#{rand(100)}"
  end
end
