.class public Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
.super Ljava/lang/Object;
.source "PersonaPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PersonaRCPSettings"
.end annotation


# instance fields
.field public property:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->property:Ljava/lang/String;

    .line 131
    iput-object v0, p0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->value:Ljava/lang/String;

    .line 132
    return-void
.end method
