.class Lcom/android/server/pm/PersonaServiceHelper$3;
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
    .registers 3

    .line 405
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 406
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "com.android.providers.media.module"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/PersonaServiceHelper$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    const-string v1, "com.google.android.providers.media.module"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/PersonaServiceHelper$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    const-string v1, "com.samsung.android.secsoundpicker"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/PersonaServiceHelper$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    const-string v1, "com.google.android.gms"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/PersonaServiceHelper$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    const-string v1, "com.google.android.gsf"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/PersonaServiceHelper$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    const-string v1, "com.google.android.gsf.login"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/PersonaServiceHelper$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "com.samsung.android.voc"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/PersonaServiceHelper$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    const-string v1, "com.samsung.android.providers.media"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/PersonaServiceHelper$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    return-void
.end method
