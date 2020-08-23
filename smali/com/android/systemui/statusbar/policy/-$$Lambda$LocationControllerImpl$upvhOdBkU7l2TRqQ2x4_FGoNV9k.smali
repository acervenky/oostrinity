.class public final synthetic Lcom/android/systemui/statusbar/policy/-$$Lambda$LocationControllerImpl$upvhOdBkU7l2TRqQ2x4_FGoNV9k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

.field private final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$LocationControllerImpl$upvhOdBkU7l2TRqQ2x4_FGoNV9k;->f$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$LocationControllerImpl$upvhOdBkU7l2TRqQ2x4_FGoNV9k;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$LocationControllerImpl$upvhOdBkU7l2TRqQ2x4_FGoNV9k;->f$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$LocationControllerImpl$upvhOdBkU7l2TRqQ2x4_FGoNV9k;->f$1:Landroid/content/Context;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->lambda$onReceive$0$LocationControllerImpl(Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void
.end method
