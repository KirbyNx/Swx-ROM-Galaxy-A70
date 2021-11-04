.class Lcom/android/server/pm/PersonaServiceHelper$2;
.super Ljava/util/HashMap;
.source "PersonaServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaServiceHelper;
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
    .registers 4

    .line 397
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 398
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "com.google.android.providers.media.module"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/PersonaServiceHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    const-string v1, "com.samsung.knox.securefolder"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/PersonaServiceHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "com.samsung.android.forest"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/pm/PersonaServiceHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    const-string v2, "com.samsung.android.secsoundpicker"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/pm/PersonaServiceHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    const-string v0, "com.LogiaGroup.LogiaDeck"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaServiceHelper$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    return-void
.end method
