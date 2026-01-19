[StagingDefinition = [Kind = "FastCopy"]]
section Section1;
[DataDestinations = {[Definition = [Kind = "Reference", QueryName = "Executive Summary_DataDestination", IsNewTarget = true], Settings = [Kind = "Automatic", TypeSettings = [Kind = "Table"]]]}]
shared #"Executive Summary" = let
  Source = Lakehouse.Contents(null),
  Navigation = Source{[workspaceId = "1e13863d-eeae-473e-b824-dff98dc8685f"]}[Data],
  #"Navigation 1" = Navigation{[lakehouseId = "57901b88-7055-4d7e-a233-51035c619fb3"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Id = "Files", ItemKind = "Folder"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "Executive_Board_Compliance_Dashboard_GCQHSE (1)new.xlsx"]}[Content],
  #"Imported Excel workbook" = Excel.Workbook(#"Navigation 3", null, true),
  #"Navigation 4" = #"Imported Excel workbook"{[Item = "Executive Summary", Kind = "Sheet"]}[Data],
  #"Changed column type" = Table.TransformColumnTypes(#"Navigation 4", {{"Column1", type text}, {"Column2", type text}, {"Column3", type text}, {"Column4", type text}, {"Column5", type text}}),
  #"Promoted headers" = Table.PromoteHeaders(#"Changed column type", [PromoteAllScalars = true])
in
  #"Promoted headers";
[DataDestinations = {[Definition = [Kind = "Reference", QueryName = "Asbestos_DataDestination", IsNewTarget = true], Settings = [Kind = "Automatic", TypeSettings = [Kind = "Table"]]]}]
shared Asbestos = let
  Source = Lakehouse.Contents(null),
  Navigation = Source{[workspaceId = "1e13863d-eeae-473e-b824-dff98dc8685f"]}[Data],
  #"Navigation 1" = Navigation{[lakehouseId = "57901b88-7055-4d7e-a233-51035c619fb3"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Id = "Files", ItemKind = "Folder"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "Executive_Board_Compliance_Dashboard_GCQHSE (1)new.xlsx"]}[Content],
  #"Imported Excel workbook" = Excel.Workbook(#"Navigation 3", null, true),
  #"Navigation 4" = #"Imported Excel workbook"{[Item = "Asbestos", Kind = "Sheet"]}[Data],
  #"Promoted headers" = Table.PromoteHeaders(#"Navigation 4", [PromoteAllScalars = true]),
  #"Changed column type" = Table.TransformColumnTypes(#"Promoted headers", {{"Metric", type text}, {"Target", Percentage.Type}, {"Actual", Int64.Type}, {"RAG", type text}})
in
  #"Changed column type";
[DataDestinations = {[Definition = [Kind = "Reference", QueryName = "Legionella_DataDestination", IsNewTarget = true], Settings = [Kind = "Automatic", TypeSettings = [Kind = "Table"]]]}]
shared Legionella = let
  Source = Lakehouse.Contents(null),
  Navigation = Source{[workspaceId = "1e13863d-eeae-473e-b824-dff98dc8685f"]}[Data],
  #"Navigation 1" = Navigation{[lakehouseId = "57901b88-7055-4d7e-a233-51035c619fb3"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Id = "Files", ItemKind = "Folder"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "Executive_Board_Compliance_Dashboard_GCQHSE (1)new.xlsx"]}[Content],
  #"Imported Excel workbook" = Excel.Workbook(#"Navigation 3", null, true),
  #"Navigation 4" = #"Imported Excel workbook"{[Item = "Legionella", Kind = "Sheet"]}[Data],
  #"Promoted headers" = Table.PromoteHeaders(#"Navigation 4", [PromoteAllScalars = true]),
  #"Changed column type" = Table.TransformColumnTypes(#"Promoted headers", {{"Metric", type text}, {"Target", Percentage.Type}, {"Actual", Int64.Type}, {"RAG", type text}})
in
  #"Changed column type";
[DataDestinations = {[Definition = [Kind = "Reference", QueryName = "Audit Actions_DataDestination", IsNewTarget = true], Settings = [Kind = "Automatic", TypeSettings = [Kind = "Table"]]]}]
shared #"Audit Actions" = let
  Source = Lakehouse.Contents(null),
  Navigation = Source{[workspaceId = "1e13863d-eeae-473e-b824-dff98dc8685f"]}[Data],
  #"Navigation 1" = Navigation{[lakehouseId = "57901b88-7055-4d7e-a233-51035c619fb3"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Id = "Files", ItemKind = "Folder"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "Executive_Board_Compliance_Dashboard_GCQHSE (1)new.xlsx"]}[Content],
  #"Imported Excel workbook" = Excel.Workbook(#"Navigation 3", null, true),
  #"Navigation 4" = #"Imported Excel workbook"{[Item = "Audit Actions", Kind = "Sheet"]}[Data],
  #"Promoted headers" = Table.PromoteHeaders(#"Navigation 4", [PromoteAllScalars = true]),
  #"Changed column type" = Table.TransformColumnTypes(#"Promoted headers", {{"Category", type text}, {"Total Actions", Int64.Type}, {"Completed", Int64.Type}, {"Overdue", Int64.Type}, {"RAG", type text}, {"Notes", type text}})
in
  #"Changed column type";
[DataDestinations = {[Definition = [Kind = "Reference", QueryName = "Statutory Compliance_DataDestination", IsNewTarget = true], Settings = [Kind = "Manual", AllowCreation = true, ColumnSettings = [Mappings = {[SourceColumnName = "Compliance Area", DestinationColumnName = "Compliance Area"], [SourceColumnName = "Frequency", DestinationColumnName = "Frequency"], [SourceColumnName = "Last Inspection", DestinationColumnName = "Last Inspection"], [SourceColumnName = "Next Due", DestinationColumnName = "Next Due"], [SourceColumnName = "Status (RAG)", DestinationColumnName = "Status _RAG_"], [SourceColumnName = "% Compliance", DestinationColumnName = "% Compliance"]}], DynamicSchema = true, UpdateMethod = [Kind = "Replace"], TypeSettings = [Kind = "Table"]]]}]
shared #"Statutory Compliance" = let
  Source = Lakehouse.Contents(null),
  Navigation = Source{[workspaceId = "1e13863d-eeae-473e-b824-dff98dc8685f"]}[Data],
  #"Navigation 1" = Navigation{[lakehouseId = "57901b88-7055-4d7e-a233-51035c619fb3"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Id = "Files", ItemKind = "Folder"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "Executive_Board_Compliance_Dashboard_GCQHSE (1)new.xlsx"]}[Content],
  #"Imported Excel workbook" = Excel.Workbook(#"Navigation 3", null, true),
  #"Navigation 4" = #"Imported Excel workbook"{[Item = "Statutory Compliance", Kind = "Sheet"]}[Data],
  #"Promoted headers" = Table.PromoteHeaders(#"Navigation 4", [PromoteAllScalars = true]),
  #"Changed column type" = Table.TransformColumnTypes(#"Promoted headers", {{"Last Inspection", type date}, {"Next Due", type date}, {"Compliance Area", type text}, {"Frequency", type text}, {"Status (RAG)", type text}, {"% Compliance", Int64.Type}})
in
  #"Changed column type";
[DataDestinations = {[Definition = [Kind = "Reference", QueryName = "Heatmap_DataDestination", IsNewTarget = true], Settings = [Kind = "Automatic", TypeSettings = [Kind = "Table"]]]}]
shared Heatmap = let
  Source = Lakehouse.Contents(null),
  Navigation = Source{[workspaceId = "1e13863d-eeae-473e-b824-dff98dc8685f"]}[Data],
  #"Navigation 1" = Navigation{[lakehouseId = "57901b88-7055-4d7e-a233-51035c619fb3"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Id = "Files", ItemKind = "Folder"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "Executive_Board_Compliance_Dashboard_GCQHSE (1)new.xlsx"]}[Content],
  #"Imported Excel workbook" = Excel.Workbook(#"Navigation 3", null, true),
  #"Navigation 4" = #"Imported Excel workbook"{[Item = "Heatmap", Kind = "Sheet"]}[Data],
  #"Changed column type" = Table.TransformColumnTypes(#"Navigation 4", {{"Column1", type text}, {"Column2", type text}, {"Column3", type text}, {"Column4", type text}, {"Column5", type text}, {"Column6", type text}}),
  #"Promoted headers" = Table.PromoteHeaders(#"Changed column type", [PromoteAllScalars = true])
in
  #"Promoted headers";
shared #"Executive Summary_DataDestination" = let
  Pattern = Lakehouse.Contents([HierarchicalNavigation = null, CreateNavigationProperties = false, EnableFolding = false]),
  Navigation_1 = Pattern{[workspaceId = "1e13863d-eeae-473e-b824-dff98dc8685f"]}[Data],
  Navigation_2 = Navigation_1{[lakehouseId = "57901b88-7055-4d7e-a233-51035c619fb3"]}[Data],
  TableNavigation = Navigation_2{[Id = "Executive Summary", ItemKind = "Table"]}?[Data]?
in
  TableNavigation;
shared Asbestos_DataDestination = let
  Pattern = Lakehouse.Contents([HierarchicalNavigation = null, CreateNavigationProperties = false, EnableFolding = false]),
  Navigation_1 = Pattern{[workspaceId = "1e13863d-eeae-473e-b824-dff98dc8685f"]}[Data],
  Navigation_2 = Navigation_1{[lakehouseId = "57901b88-7055-4d7e-a233-51035c619fb3"]}[Data],
  TableNavigation = Navigation_2{[Id = "Asbestos", ItemKind = "Table"]}?[Data]?
in
  TableNavigation;
shared Legionella_DataDestination = let
  Pattern = Lakehouse.Contents([HierarchicalNavigation = null, CreateNavigationProperties = false, EnableFolding = false]),
  Navigation_1 = Pattern{[workspaceId = "1e13863d-eeae-473e-b824-dff98dc8685f"]}[Data],
  Navigation_2 = Navigation_1{[lakehouseId = "57901b88-7055-4d7e-a233-51035c619fb3"]}[Data],
  TableNavigation = Navigation_2{[Id = "Legionella", ItemKind = "Table"]}?[Data]?
in
  TableNavigation;
shared #"Audit Actions_DataDestination" = let
  Pattern = Lakehouse.Contents([HierarchicalNavigation = null, CreateNavigationProperties = false, EnableFolding = false]),
  Navigation_1 = Pattern{[workspaceId = "1e13863d-eeae-473e-b824-dff98dc8685f"]}[Data],
  Navigation_2 = Navigation_1{[lakehouseId = "57901b88-7055-4d7e-a233-51035c619fb3"]}[Data],
  TableNavigation = Navigation_2{[Id = "Audit Actions", ItemKind = "Table"]}?[Data]?
in
  TableNavigation;
shared Heatmap_DataDestination = let
  Pattern = Lakehouse.Contents([HierarchicalNavigation = null, CreateNavigationProperties = false, EnableFolding = false]),
  Navigation_1 = Pattern{[workspaceId = "1e13863d-eeae-473e-b824-dff98dc8685f"]}[Data],
  Navigation_2 = Navigation_1{[lakehouseId = "57901b88-7055-4d7e-a233-51035c619fb3"]}[Data],
  TableNavigation = Navigation_2{[Id = "Heatmap", ItemKind = "Table"]}?[Data]?
in
  TableNavigation;
shared #"Statutory Compliance_DataDestination" = let
  Pattern = Lakehouse.Contents([HierarchicalNavigation = null, CreateNavigationProperties = false, EnableFolding = false]),
  Navigation_1 = Pattern{[workspaceId = "1e13863d-eeae-473e-b824-dff98dc8685f"]}[Data],
  Navigation_2 = Navigation_1{[lakehouseId = "57901b88-7055-4d7e-a233-51035c619fb3"]}[Data],
  TableNavigation = Navigation_2{[Id = "Statutory Compliance", ItemKind = "Table"]}?[Data]?
in
  TableNavigation;
