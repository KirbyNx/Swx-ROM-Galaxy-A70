.class public final synthetic Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$qQZiyIBwsviT6Gua-5KCkArks-4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$qQZiyIBwsviT6Gua-5KCkArks-4;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$qQZiyIBwsviT6Gua-5KCkArks-4;

    invoke-direct {v0}, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$qQZiyIBwsviT6Gua-5KCkArks-4;-><init>()V

    sput-object v0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$qQZiyIBwsviT6Gua-5KCkArks-4;->INSTANCE:Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$qQZiyIBwsviT6Gua-5KCkArks-4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-static {}, Lcom/android/server/statusbar/StatusBarManagerService;->lambda$shutdownByBixby$7()V

    return-void
.end method
