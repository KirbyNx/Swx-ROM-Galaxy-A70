.class public final Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;
.super Ljava/lang/Object;
.source "MARsVersionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/mars/database/MARsVersionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PolicyInfo"
.end annotation


# instance fields
.field final action:I

.field public bigdataRestriction:I

.field public enabled:I

.field public firstTriggerTime:J

.field final name:Ljava/lang/String;

.field final num:I

.field public repeatTriggerTime:J

.field final restriction:I

.field final targetCategory:I

.field final synthetic this$0:Lcom/android/server/am/mars/database/MARsVersionManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/database/MARsVersionManager;Ljava/lang/String;IIIIIJJI)V
    .registers 13
    .param p1, "this$0"    # Lcom/android/server/am/mars/database/MARsVersionManager;
    .param p2, "_name"    # Ljava/lang/String;
    .param p3, "_num"    # I
    .param p4, "_enabled"    # I
    .param p5, "_targetCategory"    # I
    .param p6, "_restriction"    # I
    .param p7, "_action"    # I
    .param p8, "_firstTriggerTime"    # J
    .param p10, "_repeatTriggerTime"    # J
    .param p12, "_bigdataRestriction"    # I

    .line 98
    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->this$0:Lcom/android/server/am/mars/database/MARsVersionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p2, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->name:Ljava/lang/String;

    .line 100
    iput p3, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->num:I

    .line 101
    iput p4, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->enabled:I

    .line 102
    iput p5, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->targetCategory:I

    .line 103
    iput p6, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->restriction:I

    .line 104
    iput p7, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->action:I

    .line 105
    iput-wide p8, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->firstTriggerTime:J

    .line 106
    iput-wide p10, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->repeatTriggerTime:J

    .line 107
    iput p12, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->bigdataRestriction:I

    .line 108
    return-void
.end method


# virtual methods
.method public getAction()I
    .registers 2

    .line 137
    iget v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->action:I

    return v0
.end method

.method public getEnabled()I
    .registers 2

    .line 125
    iget v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->enabled:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNum()I
    .registers 2

    .line 121
    iget v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->num:I

    return v0
.end method

.method public getRestriction()I
    .registers 2

    .line 133
    iget v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->restriction:I

    return v0
.end method

.method public getTargetCategory()I
    .registers 2

    .line 129
    iget v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->targetCategory:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->num:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->enabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->targetCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", restriction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->restriction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", firstTriggerTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->firstTriggerTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", repeatTriggerTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->repeatTriggerTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
