module GoogleDocPersistence
  extend ActiveSupport::Concern

  def save_to_google_doc
    session = GoogleDrive.login(ENV['GMAIL_USERNAME'], ENV['GMAIL_PASSWORD'])
    ws = session.spreadsheet_by_key(ENV['GOOGLE_DOC_KEY']).worksheets[0]

    write_row(ws)

    ws.save
  end

  private

  def write_row(worksheet)
    row = worksheet.num_rows + 1

    (1..6).each do |col|
      worksheet[row, col] = data_for_col[col]
    end
  end

  def data_for_col
    [nil, user.id, user.nickname, user.name, match_1, match_2, match_3]
  end
end
