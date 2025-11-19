{{- define "webapp-chart.name" -}}
webapp
{{- end }}

{{- define "webapp-chart.fullname" -}}
{{- include "webapp-chart.name" . }}-release
{{- end }}

{{- define "webapp-chart.serviceAccountName" -}}
{{- if .Values.serviceAccount.name }}
{{- .Values.serviceAccount.name }}
{{- else }}
{{- include "webapp-chart.fullname" . }}
{{- end }}
{{- end }}
