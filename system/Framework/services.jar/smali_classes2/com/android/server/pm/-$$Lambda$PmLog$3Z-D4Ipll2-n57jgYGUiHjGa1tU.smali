.class public final synthetic Lcom/android/server/pm/-$$Lambda$PmLog$3Z-D4Ipll2-n57jgYGUiHjGa1tU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/-$$Lambda$PmLog$3Z-D4Ipll2-n57jgYGUiHjGa1tU;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/pm/-$$Lambda$PmLog$3Z-D4Ipll2-n57jgYGUiHjGa1tU;

    invoke-direct {v0}, Lcom/android/server/pm/-$$Lambda$PmLog$3Z-D4Ipll2-n57jgYGUiHjGa1tU;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$$Lambda$PmLog$3Z-D4Ipll2-n57jgYGUiHjGa1tU;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PmLog$3Z-D4Ipll2-n57jgYGUiHjGa1tU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/pm/PmLog;->lambda$logOwnerPermissionRevoked$0(Ljava/lang/String;)V

    return-void
.end method
