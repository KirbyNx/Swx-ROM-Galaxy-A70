.class public final synthetic Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$QcawcFcJtEX4EhYptq_Vb4j368Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$QcawcFcJtEX4EhYptq_Vb4j368Y;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$QcawcFcJtEX4EhYptq_Vb4j368Y;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$QcawcFcJtEX4EhYptq_Vb4j368Y;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$QcawcFcJtEX4EhYptq_Vb4j368Y;->INSTANCE:Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$QcawcFcJtEX4EhYptq_Vb4j368Y;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    check-cast p1, Lcom/android/server/wm/LaunchObserverRegistryImpl;

    check-cast p2, [B

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->lambda$QcawcFcJtEX4EhYptq_Vb4j368Y(Lcom/android/server/wm/LaunchObserverRegistryImpl;[BJ)V

    return-void
.end method
