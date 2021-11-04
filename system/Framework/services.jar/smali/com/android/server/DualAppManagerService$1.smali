.class Lcom/android/server/DualAppManagerService$1;
.super Ljava/util/HashMap;
.source "DualAppManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DualAppManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 3

    .line 141
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 142
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Pictures"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/DualAppManagerService$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v1, "DCIM"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/DualAppManagerService$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v1, "Music"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/DualAppManagerService$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v1, "Download"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/DualAppManagerService$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v1, "Documents"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/DualAppManagerService$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v1, "Movies"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/DualAppManagerService$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v1, "DualApp"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/DualAppManagerService$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    return-void
.end method
