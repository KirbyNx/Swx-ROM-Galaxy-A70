.class Lcom/android/server/am/BaseRestrictionMgr$BaseRestrictionMgrHolder;
.super Ljava/lang/Object;
.source "BaseRestrictionMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BaseRestrictionMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseRestrictionMgrHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/server/am/BaseRestrictionMgr;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 191
    new-instance v0, Lcom/android/server/am/BaseRestrictionMgr;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/BaseRestrictionMgr;-><init>(Lcom/android/server/am/BaseRestrictionMgr$1;)V

    sput-object v0, Lcom/android/server/am/BaseRestrictionMgr$BaseRestrictionMgrHolder;->INSTANCE:Lcom/android/server/am/BaseRestrictionMgr;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/android/server/am/BaseRestrictionMgr;
    .registers 1

    .line 190
    sget-object v0, Lcom/android/server/am/BaseRestrictionMgr$BaseRestrictionMgrHolder;->INSTANCE:Lcom/android/server/am/BaseRestrictionMgr;

    return-object v0
.end method
