module GoogleDocPersistence
  extend ActiveSupport::Concern

  def save_to_google_doc
    session = GoogleDrive.login(ENV['GMAIL_USERNAME'], ENV['GMAIL_PASSWORD'])
    ws = session.spreadsheet_by_key(ENV['GOOGLE_DOC_KEY']).worksheets[0]

    write_row(ws, ws.num_rows + 1)

    ws.save
  end

  private

  def write_row(worksheet, row)
    worksheet[row, 1] = user.id
    worksheet[row, 2] = user.nickname
    worksheet[row, 3] = user.name
    worksheet[row, 4] = match_1
    worksheet[row, 5] = match_2
    worksheet[row, 6] = match_3
  end
end
