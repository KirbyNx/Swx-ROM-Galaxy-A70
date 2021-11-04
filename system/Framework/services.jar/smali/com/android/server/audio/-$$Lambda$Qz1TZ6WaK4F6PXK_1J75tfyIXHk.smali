.class public final synthetic Lcom/android/server/audio/-$$Lambda$Qz1TZ6WaK4F6PXK_1J75tfyIXHk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/audio/-$$Lambda$Qz1TZ6WaK4F6PXK_1J75tfyIXHk;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/audio/-$$Lambda$Qz1TZ6WaK4F6PXK_1J75tfyIXHk;

    invoke-direct {v0}, Lcom/android/server/audio/-$$Lambda$Qz1TZ6WaK4F6PXK_1J75tfyIXHk;-><init>()V

    sput-object v0, Lcom/android/server/audio/-$$Lambda$Qz1TZ6WaK4F6PXK_1J75tfyIXHk;->INSTANCE:Lcom/android/server/audio/-$$Lambda$Qz1TZ6WaK4F6PXK_1J75tfyIXHk;

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

    check-cast p1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    return-void
.end method
