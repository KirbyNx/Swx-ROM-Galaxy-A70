.class Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;
.super Ljava/lang/Object;
.source "NfcLedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/NfcLedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Command"
.end annotation


# instance fields
.field code:I

.field data:[B

.field final synthetic this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/NfcLedCoverController;I[B)V
    .registers 4
    .param p2, "code"    # I
    .param p3, "data"    # [B

    .line 1656
    iput-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 1657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1658
    iput p2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;->code:I

    .line 1659
    iput-object p3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;->data:[B

    .line 1660
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 1664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Command [code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;->data:[B

    .line 1665
    invoke-virtual {v1, v2}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1664
    return-object v0
.end method
