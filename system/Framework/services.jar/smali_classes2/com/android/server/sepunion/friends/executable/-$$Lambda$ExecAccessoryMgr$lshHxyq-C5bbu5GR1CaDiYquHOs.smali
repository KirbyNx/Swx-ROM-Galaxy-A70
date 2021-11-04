.class public final synthetic Lcom/android/server/sepunion/friends/executable/-$$Lambda$ExecAccessoryMgr$lshHxyq-C5bbu5GR1CaDiYquHOs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/sepunion/friends/executable/-$$Lambda$ExecAccessoryMgr$lshHxyq-C5bbu5GR1CaDiYquHOs;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/sepunion/friends/executable/-$$Lambda$ExecAccessoryMgr$lshHxyq-C5bbu5GR1CaDiYquHOs;

    invoke-direct {v0}, Lcom/android/server/sepunion/friends/executable/-$$Lambda$ExecAccessoryMgr$lshHxyq-C5bbu5GR1CaDiYquHOs;-><init>()V

    sput-object v0, Lcom/android/server/sepunion/friends/executable/-$$Lambda$ExecAccessoryMgr$lshHxyq-C5bbu5GR1CaDiYquHOs;->INSTANCE:Lcom/android/server/sepunion/friends/executable/-$$Lambda$ExecAccessoryMgr$lshHxyq-C5bbu5GR1CaDiYquHOs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;

    invoke-static {p1}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;->lambda$handleGetAccessoryList$0(Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
