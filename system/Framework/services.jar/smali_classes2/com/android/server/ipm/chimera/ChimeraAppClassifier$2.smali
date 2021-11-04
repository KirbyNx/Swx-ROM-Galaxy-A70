.class Lcom/android/server/ipm/chimera/ChimeraAppClassifier$2;
.super Ljava/util/ArrayList;
.source "ChimeraAppClassifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/chimera/ChimeraAppClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .line 90
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    const-string v0, "com.samsung.android.spay"

    invoke-virtual {p0, v0}, Lcom/android/server/ipm/chimera/ChimeraAppClassifier$2;->add(Ljava/lang/Object;)Z

    .line 92
    const-string v0, "com.google.android.as"

    invoke-virtual {p0, v0}, Lcom/android/server/ipm/chimera/ChimeraAppClassifier$2;->add(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method
