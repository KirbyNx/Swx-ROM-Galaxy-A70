.class public final synthetic Lcom/android/server/policy/-$$Lambda$KeyCombinationManager$xvAZTAC6rx8czsQ56186_EVI3xA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/policy/-$$Lambda$KeyCombinationManager$xvAZTAC6rx8czsQ56186_EVI3xA;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/policy/-$$Lambda$KeyCombinationManager$xvAZTAC6rx8czsQ56186_EVI3xA;

    invoke-direct {v0}, Lcom/android/server/policy/-$$Lambda$KeyCombinationManager$xvAZTAC6rx8czsQ56186_EVI3xA;-><init>()V

    sput-object v0, Lcom/android/server/policy/-$$Lambda$KeyCombinationManager$xvAZTAC6rx8czsQ56186_EVI3xA;->INSTANCE:Lcom/android/server/policy/-$$Lambda$KeyCombinationManager$xvAZTAC6rx8czsQ56186_EVI3xA;

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

    invoke-static {}, Lcom/android/server/policy/KeyCombinationManager;->lambda$new$4()V

    return-void
.end method
