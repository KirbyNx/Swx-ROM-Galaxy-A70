.class Lcom/android/server/pm/PersonaServiceHelper$1;
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

    .line 390
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 391
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "com.google.android.providers.media.module"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/PersonaServiceHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    const-string v1, "com.android.providers.media.module"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/PersonaServiceHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    const-string v1, "com.samsung.android.honeyboard"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/PersonaServiceHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    const-string v1, "com.samsung.android.secsoundpicker"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/PersonaServiceHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    return-void
.end method
