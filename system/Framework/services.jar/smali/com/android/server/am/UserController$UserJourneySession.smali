.class Lcom/android/server/am/UserController$UserJourneySession;
.super Ljava/lang/Object;
.source "UserController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/UserController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserJourneySession"
.end annotation


# instance fields
.field final mJourney:I

.field final mSessionId:J


# direct methods
.method constructor <init>(JI)V
    .registers 4
    .param p1, "sessionId"    # J
    .param p3, "journey"    # I

    .line 3161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3162
    iput p3, p0, Lcom/android/server/am/UserController$UserJourneySession;->mJourney:I

    .line 3163
    iput-wide p1, p0, Lcom/android/server/am/UserController$UserJourneySession;->mSessionId:J

    .line 3164
    return-void
.end method
