.class final Lcom/android/server/notification/NotificationRecord$Light;
.super Ljava/lang/Object;
.source "NotificationRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Light"
.end annotation


# instance fields
.field public final color:I

.field public final offMs:I

.field public final onMs:I


# direct methods
.method public constructor <init>(III)V
    .registers 4
    .param p1, "color"    # I
    .param p2, "onMs"    # I
    .param p3, "offMs"    # I

    .line 1554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1555
    iput p1, p0, Lcom/android/server/notification/NotificationRecord$Light;->color:I

    .line 1556
    iput p2, p0, Lcom/android/server/notification/NotificationRecord$Light;->onMs:I

    .line 1557
    iput p3, p0, Lcom/android/server/notification/NotificationRecord$Light;->offMs:I

    .line 1558
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 1562
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1563
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2c

    .line 1565
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/android/server/notification/NotificationRecord$Light;

    .line 1567
    .local v2, "light":Lcom/android/server/notification/NotificationRecord$Light;
    iget v3, p0, Lcom/android/server/notification/NotificationRecord$Light;->color:I

    iget v4, v2, Lcom/android/server/notification/NotificationRecord$Light;->color:I

    if-eq v3, v4, :cond_1c

    return v1

    .line 1568
    :cond_1c
    iget v3, p0, Lcom/android/server/notification/NotificationRecord$Light;->onMs:I

    iget v4, v2, Lcom/android/server/notification/NotificationRecord$Light;->onMs:I

    if-eq v3, v4, :cond_23

    return v1

    .line 1569
    :cond_23
    iget v3, p0, Lcom/android/server/notification/NotificationRecord$Light;->offMs:I

    iget v4, v2, Lcom/android/server/notification/NotificationRecord$Light;->offMs:I

    if-ne v3, v4, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v1

    :goto_2b
    return v0

    .line 1563
    .end local v2    # "light":Lcom/android/server/notification/NotificationRecord$Light;
    :cond_2c
    :goto_2c
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 1575
    iget v0, p0, Lcom/android/server/notification/NotificationRecord$Light;->color:I

    .line 1576
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/server/notification/NotificationRecord$Light;->onMs:I

    add-int/2addr v1, v2

    .line 1577
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/android/server/notification/NotificationRecord$Light;->offMs:I

    add-int/2addr v0, v2

    .line 1578
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Light{color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/NotificationRecord$Light;->color:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", onMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/NotificationRecord$Light;->onMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", offMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/NotificationRecord$Light;->offMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
