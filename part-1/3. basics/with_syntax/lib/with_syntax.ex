defmodule WithSyntax do
  def scope_sample do
    content = "Now its the time"

    lp =
      with {:ok, file } = File.open("/etc/passwd"),
        content = IO.read(file, :all),
        :ok = File.close(file),
        [_, uid, gid] = Regex.run(~r/^_lp:.*?:(\d+):(\d+)/m, content)
      do
        "Group: #{gid}, User: #{uid}"
      end

      IO.puts(lp)
      IO.puts(content)
  end

  def match_sample do
    with [a | _] <- nil, do: a
    with [a | _] <- [1,2, 3], do: a
  end
end
