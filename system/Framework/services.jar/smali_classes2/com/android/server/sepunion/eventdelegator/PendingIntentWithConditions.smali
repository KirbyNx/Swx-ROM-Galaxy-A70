.class public Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;
.super Ljava/lang/Object;
.source "PendingIntentWithConditions.java"


# instance fields
.field private mConditions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFlag:I

.field private mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/app/PendingIntent;ILjava/util/ArrayList;)V
    .registers 4
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/PendingIntent;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 13
    .local p3, "conditions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->mPendingIntent:Landroid/app/PendingIntent;

    .line 15
    iput p2, p0, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->mFlag:I

    .line 16
    iput-object p3, p0, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->mConditions:Ljava/util/ArrayList;

    .line 17
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "otherObj"    # Ljava/lang/Object;

    .line 33
    instance-of v0, p1, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;

    if-eqz v0, :cond_10

    .line 34
    iget-object v0, p0, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->mPendingIntent:Landroid/app/PendingIntent;

    move-object v1, p1

    check-cast v1, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;

    iget-object v1, v1, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 36
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public getConditions()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->mConditions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFlag()I
    .registers 2

    .line 24
    iget v0, p0, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->mFlag:I

    return v0
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method
