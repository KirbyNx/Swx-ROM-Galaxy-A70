.class public Lcom/android/server/ContainerServiceInfo;
.super Ljava/lang/Object;
.source "ContainerServiceInfo.java"


# instance fields
.field public category:Ljava/lang/String;

.field public name:Landroid/content/ComponentName;

.field public userid:I


# direct methods
.method public constructor <init>(ILandroid/content/ComponentName;Ljava/lang/String;)V
    .registers 4
    .param p1, "arg1"    # I
    .param p2, "arg2"    # Landroid/content/ComponentName;
    .param p3, "arg3"    # Ljava/lang/String;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/android/server/ContainerServiceInfo;->userid:I

    .line 12
    iput-object p2, p0, Lcom/android/server/ContainerServiceInfo;->name:Landroid/content/ComponentName;

    .line 13
    iput-object p3, p0, Lcom/android/server/ContainerServiceInfo;->category:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 24
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 25
    return v0

    .line 27
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    .line 28
    :try_start_7
    move-object v2, p1

    check-cast v2, Lcom/android/server/ContainerServiceInfo;

    .line 29
    .local v2, "other":Lcom/android/server/ContainerServiceInfo;
    iget v3, p0, Lcom/android/server/ContainerServiceInfo;->userid:I

    iget v4, v2, Lcom/android/server/ContainerServiceInfo;->userid:I

    if-ne v3, v4, :cond_23

    iget-object v3, p0, Lcom/android/server/ContainerServiceInfo;->name:Landroid/content/ComponentName;

    .line 30
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/ContainerServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_20
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_20} :catch_25

    if-eqz v3, :cond_23

    goto :goto_24

    :cond_23
    move v0, v1

    .line 29
    :goto_24
    return v0

    .line 32
    .end local v2    # "other":Lcom/android/server/ContainerServiceInfo;
    :catch_25
    move-exception v0

    goto :goto_28

    .line 33
    :cond_27
    nop

    .line 34
    :goto_28
    return v1
.end method

.method public hashCode()I
    .registers 2

    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 17
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContainerServiceInfo ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/ContainerServiceInfo;->userid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ContainerServiceInfo;->name:Landroid/content/ComponentName;

    .line 18
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", category:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ContainerServiceInfo;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 17
    return-object v0
.end method
