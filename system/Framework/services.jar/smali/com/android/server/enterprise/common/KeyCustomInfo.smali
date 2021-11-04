.class public Lcom/android/server/enterprise/common/KeyCustomInfo;
.super Ljava/lang/Object;
.source "KeyCustomInfo.java"


# instance fields
.field private mAction:I

.field private mDispatching:I

.field private mIntent:Landroid/content/Intent;

.field private mKeyCode:I

.field private mPressType:I

.field private mPriority:I

.field private mUserId:I


# direct methods
.method public constructor <init>(IIILandroid/content/Intent;II)V
    .registers 15
    .param p1, "priority"    # I
    .param p2, "keyCode"    # I
    .param p3, "action"    # I
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "dispatching"    # I
    .param p6, "pressType"    # I

    .line 35
    const/4 v7, -0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/enterprise/common/KeyCustomInfo;-><init>(IIILandroid/content/Intent;III)V

    .line 36
    return-void
.end method

.method public constructor <init>(IIILandroid/content/Intent;III)V
    .registers 8
    .param p1, "priority"    # I
    .param p2, "keyCode"    # I
    .param p3, "action"    # I
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "dispatching"    # I
    .param p6, "pressType"    # I
    .param p7, "userId"    # I

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/android/server/enterprise/common/KeyCustomInfo;->mPriority:I

    .line 41
    iput p2, p0, Lcom/android/server/enterprise/common/KeyCustomInfo;->mKeyCode:I

    .line 42
    iput p3, p0, Lcom/android/server/enterprise/common/KeyCustomInfo;->mAction:I

    .line 43
    iput-object p4, p0, Lcom/android/server/enterprise/common/KeyCustomInfo;->mIntent:Landroid/content/Intent;

    .line 44
    iput p5, p0, Lcom/android/server/enterprise/common/KeyCustomInfo;->mDispatching:I

    .line 45
    iput p6, p0, Lcom/android/server/enterprise/common/KeyCustomInfo;->mPressType:I

    .line 46
    iput p7, p0, Lcom/android/server/enterprise/common/KeyCustomInfo;->mUserId:I

    .line 47
    return-void
.end method


# virtual methods
.method public getAction()I
    .registers 2

    .line 58
    iget v0, p0, Lcom/android/server/enterprise/common/KeyCustomInfo;->mAction:I

    return v0
.end method

.method public getDispatching()I
    .registers 2

    .line 66
    iget v0, p0, Lcom/android/server/enterprise/common/KeyCustomInfo;->mDispatching:I

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/android/server/enterprise/common/KeyCustomInfo;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getKeyCode()I
    .registers 2

    .line 54
    iget v0, p0, Lcom/android/server/enterprise/common/KeyCustomInfo;->mKeyCode:I

    return v0
.end method

.method public getPressType()I
    .registers 2

    .line 70
    iget v0, p0, Lcom/android/server/enterprise/common/KeyCustomInfo;->mPressType:I

    return v0
.end method

.method public getPriority()I
    .registers 2

    .line 50
    iget v0, p0, Lcom/android/server/enterprise/common/KeyCustomInfo;->mPriority:I

    return v0
.end method

.method public getUserId()I
    .registers 2

    .line 74
    iget v0, p0, Lcom/android/server/enterprise/common/KeyCustomInfo;->mUserId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 79
    const/16 v0, 0xff

    .line 80
    .local v0, "LENGTH_LIMIT":I
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0xff

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 82
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "KeyCustomInfo { "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget v2, p0, Lcom/android/server/enterprise/common/KeyCustomInfo;->mPressType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget v3, p0, Lcom/android/server/enterprise/common/KeyCustomInfo;->mPriority:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget v3, p0, Lcom/android/server/enterprise/common/KeyCustomInfo;->mKeyCode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget v3, p0, Lcom/android/server/enterprise/common/KeyCustomInfo;->mAction:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget v3, p0, Lcom/android/server/enterprise/common/KeyCustomInfo;->mDispatching:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-object v3, p0, Lcom/android/server/enterprise/common/KeyCustomInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget v2, p0, Lcom/android/server/enterprise/common/KeyCustomInfo;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
