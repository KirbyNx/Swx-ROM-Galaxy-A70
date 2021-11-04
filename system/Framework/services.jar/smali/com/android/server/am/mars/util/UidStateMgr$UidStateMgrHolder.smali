.class Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;
.super Ljava/lang/Object;
.source "UidStateMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/mars/util/UidStateMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UidStateMgrHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 26
    new-instance v0, Lcom/android/server/am/mars/util/UidStateMgr;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/util/UidStateMgr;-><init>(Lcom/android/server/am/mars/util/UidStateMgr$1;)V

    sput-object v0, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/android/server/am/mars/util/UidStateMgr;
    .registers 1

    .line 25
    sget-object v0, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    return-object v0
.end method
