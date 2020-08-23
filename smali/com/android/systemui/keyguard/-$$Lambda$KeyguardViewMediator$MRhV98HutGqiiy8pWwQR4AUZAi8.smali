.class public final synthetic Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$MRhV98HutGqiiy8pWwQR4AUZAi8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$MRhV98HutGqiiy8pWwQR4AUZAi8;->f$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iput-boolean p2, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$MRhV98HutGqiiy8pWwQR4AUZAi8;->f$1:Z

    iput-boolean p3, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$MRhV98HutGqiiy8pWwQR4AUZAi8;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$MRhV98HutGqiiy8pWwQR4AUZAi8;->f$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$MRhV98HutGqiiy8pWwQR4AUZAi8;->f$1:Z

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$MRhV98HutGqiiy8pWwQR4AUZAi8;->f$2:Z

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->lambda$updateActivityLockScreenState$5$KeyguardViewMediator(ZZ)V

    return-void
.end method
