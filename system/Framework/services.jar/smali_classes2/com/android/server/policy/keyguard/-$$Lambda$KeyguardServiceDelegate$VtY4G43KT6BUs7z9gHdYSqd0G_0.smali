.class public final synthetic Lcom/android/server/policy/keyguard/-$$Lambda$KeyguardServiceDelegate$VtY4G43KT6BUs7z9gHdYSqd0G_0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/policy/keyguard/-$$Lambda$KeyguardServiceDelegate$VtY4G43KT6BUs7z9gHdYSqd0G_0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/policy/keyguard/-$$Lambda$KeyguardServiceDelegate$VtY4G43KT6BUs7z9gHdYSqd0G_0;

    invoke-direct {v0}, Lcom/android/server/policy/keyguard/-$$Lambda$KeyguardServiceDelegate$VtY4G43KT6BUs7z9gHdYSqd0G_0;-><init>()V

    sput-object v0, Lcom/android/server/policy/keyguard/-$$Lambda$KeyguardServiceDelegate$VtY4G43KT6BUs7z9gHdYSqd0G_0;->INSTANCE:Lcom/android/server/policy/keyguard/-$$Lambda$KeyguardServiceDelegate$VtY4G43KT6BUs7z9gHdYSqd0G_0;

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

    invoke-static {}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->lambda$onScreenTurnedOff$0()V

    return-void
.end method
