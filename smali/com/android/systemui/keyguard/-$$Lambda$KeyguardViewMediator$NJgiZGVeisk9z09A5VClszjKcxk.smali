.class public final synthetic Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$NJgiZGVeisk9z09A5VClszjKcxk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$NJgiZGVeisk9z09A5VClszjKcxk;->f$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iput p2, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$NJgiZGVeisk9z09A5VClszjKcxk;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$NJgiZGVeisk9z09A5VClszjKcxk;->f$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget p0, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$NJgiZGVeisk9z09A5VClszjKcxk;->f$1:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->lambda$playSound$4$KeyguardViewMediator(I)V

    return-void
.end method
