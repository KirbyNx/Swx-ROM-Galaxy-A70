.class public final synthetic Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$0orcY_izOI0IfYjUjOYWvzfm3lU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$0orcY_izOI0IfYjUjOYWvzfm3lU;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$0orcY_izOI0IfYjUjOYWvzfm3lU;

    invoke-direct {v0}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$0orcY_izOI0IfYjUjOYWvzfm3lU;-><init>()V

    sput-object v0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$0orcY_izOI0IfYjUjOYWvzfm3lU;->INSTANCE:Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$0orcY_izOI0IfYjUjOYWvzfm3lU;

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

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->lambda$scheduleGc$6()V

    return-void
.end method
