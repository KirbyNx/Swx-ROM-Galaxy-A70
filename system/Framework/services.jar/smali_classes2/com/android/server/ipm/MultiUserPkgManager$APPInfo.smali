.class public Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;
.super Ljava/lang/Object;
.source "MultiUserPkgManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/MultiUserPkgManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "APPInfo"
.end annotation


# instance fields
.field packageName:Ljava/lang/String;

.field system:Z

.field uid:I

.field user:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Z)V
    .registers 5
    .param p1, "u"    # I
    .param p2, "id"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "s"    # Z

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->user:I

    .line 66
    iput p2, p0, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->uid:I

    .line 67
    iput-object p3, p0, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->packageName:Ljava/lang/String;

    .line 68
    iput-boolean p4, p0, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->system:Z

    .line 69
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "arg0"    # Ljava/lang/Object;

    .line 73
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 74
    return v0

    .line 75
    :cond_4
    instance-of v1, p1, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;

    if-eqz v1, :cond_23

    .line 76
    move-object v1, p1

    check-cast v1, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;

    .line 77
    .local v1, "info":Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;
    iget v2, v1, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->user:I

    iget v3, p0, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->user:I

    if-ne v2, v3, :cond_23

    iget v2, v1, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->uid:I

    iget v3, p0, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->uid:I

    if-ne v2, v3, :cond_23

    iget-object v2, p0, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->packageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 78
    const/4 v0, 0x1

    return v0

    .line 80
    .end local v1    # "info":Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;
    :cond_23
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->user:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->uid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->system:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
