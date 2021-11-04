.class public Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;
.super Ljava/lang/Object;
.source "TunerResourceBasic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;
    }
.end annotation


# instance fields
.field final mId:I

.field mIsInUse:Z

.field mOwnerClientId:I


# direct methods
.method constructor <init>(Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    .line 44
    # getter for: Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;->mId:I
    invoke-static {p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;->access$000(Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mId:I

    .line 45
    return-void
.end method


# virtual methods
.method public getId()I
    .registers 2

    .line 48
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mId:I

    return v0
.end method

.method public getOwnerClientId()I
    .registers 2

    .line 56
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    return v0
.end method

.method public isInUse()Z
    .registers 2

    .line 52
    iget-boolean v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mIsInUse:Z

    return v0
.end method

.method public removeOwner()V
    .registers 2

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mIsInUse:Z

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    .line 75
    return-void
.end method

.method public setOwner(I)V
    .registers 3
    .param p1, "ownerClientId"    # I

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mIsInUse:Z

    .line 66
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    .line 67
    return-void
.end method
