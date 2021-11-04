.class public final synthetic Lcom/android/server/ipm/chimera/-$$Lambda$ChimeraAppClassifier$BFNFUoJNwDMBWHw0WrNgNZ3K0E8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ipm/chimera/ChimeraAppClassifier;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ipm/chimera/ChimeraAppClassifier;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ipm/chimera/-$$Lambda$ChimeraAppClassifier$BFNFUoJNwDMBWHw0WrNgNZ3K0E8;->f$0:Lcom/android/server/ipm/chimera/ChimeraAppClassifier;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/ipm/chimera/-$$Lambda$ChimeraAppClassifier$BFNFUoJNwDMBWHw0WrNgNZ3K0E8;->f$0:Lcom/android/server/ipm/chimera/ChimeraAppClassifier;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {v0, p1}, Lcom/android/server/ipm/chimera/ChimeraAppClassifier;->lambda$updateBluetoothUsingUidList$0$ChimeraAppClassifier(Ljava/util/Map;)V

    return-void
.end method
