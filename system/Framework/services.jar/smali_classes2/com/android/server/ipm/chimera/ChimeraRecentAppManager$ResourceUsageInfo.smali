.class public Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$ResourceUsageInfo;
.super Ljava/lang/Object;
.source "ChimeraRecentAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResourceUsageInfo"
.end annotation


# instance fields
.field private mAppPss:J

.field private mAvailMem:J

.field private mPsiFullTotal:J

.field private mPsiSomeTotal:J

.field private mUid:I


# direct methods
.method constructor <init>(IJJJJ)V
    .registers 10
    .param p1, "uid"    # I
    .param p2, "pss"    # J
    .param p4, "availMem"    # J
    .param p6, "psiSomeTotal"    # J
    .param p8, "psiFullTotal"    # J

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput p1, p0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$ResourceUsageInfo;->mUid:I

    .line 223
    iput-wide p2, p0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$ResourceUsageInfo;->mAppPss:J

    .line 224
    iput-wide p4, p0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$ResourceUsageInfo;->mAvailMem:J

    .line 225
    iput-wide p6, p0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$ResourceUsageInfo;->mPsiSomeTotal:J

    .line 226
    iput-wide p8, p0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$ResourceUsageInfo;->mPsiFullTotal:J

    .line 227
    return-void
.end method


# virtual methods
.method getAppPss()J
    .registers 3

    .line 234
    iget-wide v0, p0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$ResourceUsageInfo;->mAppPss:J

    return-wide v0
.end method

.method getAvailMem()J
    .registers 3

    .line 238
    iget-wide v0, p0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$ResourceUsageInfo;->mAvailMem:J

    return-wide v0
.end method

.method getPsiFullTotal()J
    .registers 3

    .line 246
    iget-wide v0, p0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$ResourceUsageInfo;->mPsiFullTotal:J

    return-wide v0
.end method

.method getPsiSomeTotal()J
    .registers 3

    .line 242
    iget-wide v0, p0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$ResourceUsageInfo;->mPsiSomeTotal:J

    return-wide v0
.end method

.method public getUid()I
    .registers 2

    .line 230
    iget v0, p0, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager$ResourceUsageInfo;->mUid:I

    return v0
.end method
