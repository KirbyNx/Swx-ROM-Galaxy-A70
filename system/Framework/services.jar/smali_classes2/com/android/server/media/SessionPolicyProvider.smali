.class public abstract Lcom/android/server/media/SessionPolicyProvider;
.super Ljava/lang/Object;
.source "SessionPolicyProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/SessionPolicyProvider$SessionPolicy;
    }
.end annotation


# static fields
.field static final SESSION_POLICY_IGNORE_BUTTON_RECEIVER:I = 0x1

.field static final SESSION_POLICY_IGNORE_BUTTON_SESSION:I = 0x2


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method


# virtual methods
.method getSessionPoliciesForApplication(ILjava/lang/String;)I
    .registers 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    return v0
.end method
