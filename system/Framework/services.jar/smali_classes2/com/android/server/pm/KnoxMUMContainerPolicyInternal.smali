.class public abstract Lcom/android/server/pm/KnoxMUMContainerPolicyInternal;
.super Ljava/lang/Object;
.source "KnoxMUMContainerPolicyInternal.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getWorkspaceTypeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onNewUserCreated(I)V
.end method

.method public abstract setAppSeparationOwnership(Lcom/samsung/android/knox/container/ContainerCreationParams;)V
.end method

.method public abstract validateLicenses()V
.end method
