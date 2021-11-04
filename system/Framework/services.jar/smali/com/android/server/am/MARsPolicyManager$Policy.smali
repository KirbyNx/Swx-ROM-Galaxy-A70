.class final Lcom/android/server/am/MARsPolicyManager$Policy;
.super Ljava/lang/Object;
.source "MARsPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Policy"
.end annotation


# instance fields
.field final action:I

.field public enabled:Z

.field final name:Ljava/lang/String;

.field final num:I

.field public restriction:I

.field final synthetic this$0:Lcom/android/server/am/MARsPolicyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IZIII)V
    .registers 8
    .param p1, "this$0"    # Lcom/android/server/am/MARsPolicyManager;
    .param p2, "_name"    # Ljava/lang/String;
    .param p3, "_num"    # I
    .param p4, "_enabled"    # Z
    .param p5, "_targetCategory"    # I
    .param p6, "_restriction"    # I
    .param p7, "_action"    # I

    .line 3456
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$Policy;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3457
    iput-object p2, p0, Lcom/android/server/am/MARsPolicyManager$Policy;->name:Ljava/lang/String;

    .line 3458
    iput p3, p0, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    .line 3459
    iput-boolean p4, p0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 3461
    iput p6, p0, Lcom/android/server/am/MARsPolicyManager$Policy;->restriction:I

    .line 3462
    iput p7, p0, Lcom/android/server/am/MARsPolicyManager$Policy;->action:I

    .line 3463
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 3466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager$Policy;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
