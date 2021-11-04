.class public Lcom/android/server/asks/ADPContainer;
.super Ljava/lang/Object;
.source "ADPContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;,
        Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;,
        Lcom/android/server/asks/ADPContainer$ADPPolicy;
    }
.end annotation


# instance fields
.field private mADPPolicy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/asks/ADPContainer$ADPPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "_packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/asks/ADPContainer$ADPPolicy;",
            ">;)V"
        }
    .end annotation

    .line 17
    .local p2, "_mADPPolicy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/asks/ADPContainer$ADPPolicy;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/server/asks/ADPContainer;->packageName:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/android/server/asks/ADPContainer;->mADPPolicy:Ljava/util/ArrayList;

    .line 21
    return-void
.end method


# virtual methods
.method public getADPPolicy()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/asks/ADPContainer$ADPPolicy;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/android/server/asks/ADPContainer;->mADPPolicy:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/android/server/asks/ADPContainer;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public setADPPolicy(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/asks/ADPContainer$ADPPolicy;",
            ">;)V"
        }
    .end annotation

    .line 25
    .local p1, "policyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/asks/ADPContainer$ADPPolicy;>;"
    iput-object p1, p0, Lcom/android/server/asks/ADPContainer;->mADPPolicy:Ljava/util/ArrayList;

    return-void
.end method
