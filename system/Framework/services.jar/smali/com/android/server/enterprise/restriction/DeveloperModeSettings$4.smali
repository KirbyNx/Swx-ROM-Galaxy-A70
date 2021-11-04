.class Lcom/android/server/enterprise/restriction/DeveloperModeSettings$4;
.super Ljava/util/HashMap;
.source "DeveloperModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/restriction/DeveloperModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .registers 5

    .line 155
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 159
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "persist.sys.ui.hw"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "persist.sys.debug.multi_window"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v1, "debug.hwui.show_dirty_regions"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v1, "debug.hwui.show_layers_updates"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v1, "debug.hwui.overdraw"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v1, "debug.hwui.show_non_rect_clip"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v3, "debug.egl.force_msaa"

    invoke-virtual {p0, v3, v1}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v1, "debug.hwui.profile"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v1, "debug.egl.trace"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string/jumbo v1, "persist.sys.hdcp_checking"

    const-string v2, "drm-only"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string/jumbo v1, "persist.logd.size"

    const-string v2, "262144"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "debug.layout"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    return-void
.end method
